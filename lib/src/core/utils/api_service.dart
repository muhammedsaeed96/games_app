import 'package:dio/dio.dart';

class ApiService {
  ApiService(this._dio);
  final Dio _dio;
  final _baseUrl = 'https://api.rawg.io/api/';
  final _apiKey = '6a57ff6bc93344d4946ffe2a006fae88';

  Future<dynamic> get({
    required String endPoint,
    Map<String, String>? extraParameters,
  }) async {
    final queryParameters = {
      'key': _apiKey,
      'genres': 'action',
    };
    if (extraParameters != null) {
      queryParameters.addAll(extraParameters);
    }
    final response =
        await _dio.get('$_baseUrl$endPoint', queryParameters: queryParameters);
    return response.data;
  }
}
