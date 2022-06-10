import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_project/core/failure/failure.dart';
import 'package:path_project/core/usecase/i_usecase.dart';
import 'package:path_project/core/utils/modules/repository_module.dart';
import 'package:path_project/core/utils/remote_data_source/domain/entities/get_request_params.dart';
import 'package:path_project/core/utils/remote_data_source/domain/repo/base_request_repository.dart';

class MainBaseGet implements IUsecase<String, GetRequestParams> {
  late final BaseRequestRepository repository;

  MainBaseGet(Ref ref) : repository = ref.read(mainRequestModule);

  @override
  Future<Either<Failure, String>> call(params) async {
    return await repository.baseGet(
      endPoint: params.endPoint,
      query: params.query,
      parameter: params.parameter,
    );
  }
}
