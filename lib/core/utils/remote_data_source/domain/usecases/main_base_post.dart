import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_project/core/failure/failure.dart';
import 'package:path_project/core/usecase/i_usecase.dart';
import 'package:path_project/core/utils/modules/repository_module.dart';
import 'package:path_project/core/utils/remote_data_source/domain/entities/post_request_params.dart';
import 'package:path_project/core/utils/remote_data_source/domain/repo/base_request_repository.dart';

class MainBasePost implements IUsecase<String, PostRequestParams> {
  late final BaseRequestRepository repository;

  MainBasePost(Ref ref) : repository = ref.read(mainRequestModule);

  @override
  Future<Either<Failure, String>> call(params) async {
    return await repository.basePost(
      requestBody: params.requestBody,
      endPoint: params.endPoint,
    );
  }
}
