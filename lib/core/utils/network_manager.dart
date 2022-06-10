import 'package:dio/dio.dart';

class NetworkManager {
  static Dio getDio() {
    final Dio dio = Dio();
    const String baseUrl = 'https://gateway.marvel.com:443/';

    Map<String, dynamic> queryParams = {
      'ts': 1,
      'apikey': '816dae2f5588a5fef1eaafef4398f098',
      'hash': '97f7a9e7018d2f7b5cd2167ef44ac20b',
    };

    BaseOptions options = BaseOptions(
      contentType: 'application/json',
      queryParameters: queryParams,
    );

    dio.options = options;
    options.baseUrl = baseUrl;

    return dio;
  }
}
