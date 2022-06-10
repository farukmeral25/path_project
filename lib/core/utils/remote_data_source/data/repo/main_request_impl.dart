import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:path_project/core/failure/failure.dart';
import 'package:path_project/core/failure/general_errors.dart';
import 'package:path_project/core/utils/remote_data_source/domain/entities/domain_resource_enum.dart';
import 'package:path_project/core/utils/remote_data_source/domain/entities/status_code_enums.dart';
import 'package:path_project/core/utils/remote_data_source/domain/repo/base_request_repository.dart';

class MainRequestImpl implements BaseRequestRepository {
  late final Dio _client;
  final String domainUrl = DomainResourceEnum.marvel.getUrlByState();

  MainRequestImpl(
    this._client,
  );

  @override
  Future<Either<Failure, String>> basePost({
    required Map<String, dynamic> requestBody,
    required String endPoint,
  }) async {
    Map<String, String> headers = {};

    return await _errorHandler(
      _client.post(
        endPoint,
        data: jsonEncode(requestBody),
        options: Options(
          headers: headers,
          responseType: ResponseType.plain,
          contentType: "application/json",
          method: "POST",
          validateStatus: (_) => true,
        ),
      ),
    );
  }

  @override
  Future<Either<Failure, String>> baseGet({
    required String endPoint,
    String? parameter,
    Map<String, dynamic>? query,
  }) async {
    Map<String, String> headers = {};
    headers["Content-Type"] = "application/json";
    String unifiedEndPoint = "";
    if (parameter != null) {
      unifiedEndPoint = endPoint + "/" + parameter;
    } else {
      unifiedEndPoint = endPoint;
    }

    return await _errorHandler(
      _client.get(
        unifiedEndPoint,
        queryParameters: query,
        options: Options(
          headers: headers,
          responseType: ResponseType.plain,
          contentType: "application/json",
          validateStatus: (_) => true,
        ),
      ),
    );
  }

  Future<Either<Failure, String>> _errorHandler(
      Future<Response> requestFunction) async {
    Response response;
    try {
      response = await requestFunction;
    } on SocketException {
      throw NoInternetConnectionException();
    }

    return await _handleResponse(response);
  }

  Future<Either<Failure, String>> _handleResponse(Response response) async {
    StatusCodeEnums statusCodeEnum = StatusCodeEnums.StatusCode200;
    statusCodeEnum = statusCodeEnum.statusCodeToEnum(response.statusCode!);

    if (statusCodeEnum.isSuccess()) {
      return Right(response.data);
    } else {
      throw statusCodeEnum.stateToFailure()!;
    }
  }
}
