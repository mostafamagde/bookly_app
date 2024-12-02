import 'package:dio/dio.dart';

class ApiService{
  final baseUrl="https://www.googleapis.com/books/v1/";
  final Dio _dio;

  ApiService(this._dio);
  Future<Map<String,dynamic>> get(String endPoint){
    return _dio.get(baseUrl + endPoint).then((response) => response.data);
  }

}
