import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'api_constants.dart';
import 'api_cosumer.dart';
import 'error/exception.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;
  DioConsumer({required this.dio}) {
    dio.options.baseUrl = ApiConstants.apiBaseUrl;
    // dio.interceptors.add(ApiInterceptors()
    // );
// بيطبع نفاصيل ال request كلها

    dio.interceptors.add(PrettyDioLogger(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    ));
  }
  @override
  Future delete(String path,
      {dynamic data,
      Map<String, dynamic>? queryparams,
      bool isformDta = false}) async {
    try {
      final response = await dio.delete(path,
          data: isformDta ? FormData.fromMap(data) : data,
          queryParameters: queryparams);
      return response.data;
    } on DioException catch (e) {
      Handle_Dio_Exception(e);
    }
  }

  @override
  Future get(String path,
      {Object? data, Map<String, dynamic>? queryparams}) async {
    try {
      final response =
          await dio.get(path, data: data, queryParameters: queryparams);
      return response.data;
    } on DioException catch (e) {
      Handle_Dio_Exception(e);
    }
  }

  @override
  Future patch(String path,
      {dynamic data,
      Map<String, dynamic>? queryparams,
      bool isformDta = false}) async {
    try {
      final response = await dio.patch(path,
          data: isformDta ? FormData.fromMap(data) : data,
          queryParameters: queryparams);
      return response.data;
    } on DioException catch (e) {
      Handle_Dio_Exception(e);
    }
  }

  @override
  Future post(String path,
      {dynamic data,
      Map<String, dynamic>? queryparams,
      bool isformDta = false}) async {
    try {
      final response = await dio.post(path,
          data: isformDta ? FormData.fromMap(data) : data,
          queryParameters: queryparams);
      return response.data;
    } on DioException catch (e) {
      Handle_Dio_Exception(e);
    }
  }
}
