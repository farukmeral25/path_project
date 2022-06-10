import 'package:dartz/dartz.dart';
import 'package:path_project/core/failure/failure.dart';

abstract class IUsecase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParam {}
