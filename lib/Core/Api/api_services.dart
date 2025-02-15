import 'package:dio/dio.dart';

class ApiServices {
  final String _baseUrl =
      'http://api.weatherapi.com/v1/forecast.json?key=ed96745d7ddf4c6486673902251302&q=cairo';
  final Dio _dio;

  ApiServices(this._dio);

  Future<Map<String, dynamic>> get(String endPoint) async {
    final response = await _dio.get(_baseUrl);
    // ignore: avoid_print
    print(response.data);
    return response.data;
  }
}
