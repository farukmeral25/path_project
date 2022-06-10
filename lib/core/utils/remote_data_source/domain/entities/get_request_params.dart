class GetRequestParams {
  final String endPoint;
  final String? parameter;
  final Map<String, dynamic>? query;

  GetRequestParams({
    required this.endPoint,
    this.parameter,
    this.query,
  });
}
