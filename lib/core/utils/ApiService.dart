import 'dart:convert';

import 'package:dio/dio.dart';

class Apiservice {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';

  final Dio _dio;
  Apiservice(this._dio);

  Future<Map<String, dynamic>> get(String endPoint) async {
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
