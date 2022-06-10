import 'package:dartz/dartz.dart';
import 'package:path_project/core/failure/failure.dart';

abstract class BaseRequestRepository {
  Future<Either<Failure, String>> basePost({
    required Map<String, dynamic> requestBody,
    required String endPoint,
  });

  Future<Either<Failure, String>> baseGet(
      {required String endPoint,
      String? parameter,
      Map<String, dynamic>? query});
}
