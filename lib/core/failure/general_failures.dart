import 'package:path_project/core/failure/failure.dart';

class BadRequestFailure implements Failure {}

class UnauthorizedFailure implements Failure {}

class ForbiddenFailure implements Failure {}

class NotFoundFailure implements Failure {}

class InternalFailure implements Failure {}

class GatewayTimeOutFailure implements Failure {}
