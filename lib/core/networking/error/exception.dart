import 'package:dio/dio.dart';
import 'api_error_mode.dart';

class ServerException implements Exception {
  final ErrorModel errModel;
  ServerException({required this.errModel});
}

void Handle_Dio_Exception(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      throw ServerException(errModel: ErrorModel.fromjson(e.response!.data));
    case DioExceptionType.sendTimeout:
      throw ServerException(errModel: ErrorModel.fromjson(e.response!.data));
    case DioExceptionType.receiveTimeout:
      throw ServerException(errModel: ErrorModel.fromjson(e.response!.data));
    case DioExceptionType.badCertificate:
      throw ServerException(errModel: ErrorModel.fromjson(e.response!.data));
    case DioExceptionType.cancel:
      throw ServerException(errModel: ErrorModel.fromjson(e.response!.data));
    case DioExceptionType.connectionError:
      throw ServerException(errModel: ErrorModel.fromjson(e.response!.data));
    case DioExceptionType.unknown:
    
      throw ServerException(errModel: ErrorModel.fromjson(e.response!.data));
    // Bad Response
    case DioExceptionType.badResponse:
      switch (e.response?.statusCode) {
        case 400: // Bad Request
          throw ServerException(
              errModel: ErrorModel.fromjson(e.response!.data));
        case 401: // unauthorized
          throw ServerException(
              errModel: ErrorModel.fromjson(e.response!.data));
        case 403: //forbidden
          throw ServerException(
              errModel: ErrorModel.fromjson(e.response!.data));
        case 404: //notfound
          throw ServerException(
              errModel: ErrorModel.fromjson(e.response!.data));
        case 409: //cofficeint
          throw ServerException(
              errModel: ErrorModel.fromjson(e.response!.data));
        case 422: //unprocessable entity
          throw ServerException(
              errModel: ErrorModel.fromjson(e.response!.data));
        case 504: // Server Exception
          throw ServerException(
              errModel: ErrorModel.fromjson(e.response!.data));
      }
  }
}
