import 'package:dartz/dartz.dart';
import 'package:mydoctor/core/networking/api_constants.dart';
import 'package:mydoctor/core/networking/api_cosumer.dart';
import 'package:mydoctor/core/networking/error/exception.dart';
import 'package:mydoctor/features/login/data/model/login_request_body.dart';
import 'package:mydoctor/features/login/data/model/login_response.dart';

class LoginRepo {
  final ApiConsumer _api;
  LoginRepo(this._api);
  Future<Either<String, LoginResponse>> Login(
      //{required String email, required String password}
      LoginrequestBody loginrequestBody) async {
    try {
      final response = await _api.post(ApiConstants.login,
           isformDta: true,
          data: {
            'email': loginrequestBody.email,
            'password': loginrequestBody.password
          }
          // LoginrequestBody(
          //     email: loginrequestBody.email,
          //     password: loginrequestBody.password)
          );
      LoginResponse logrespo = LoginResponse.fromjson(response);
      //  LoginResponse logrespo = LoginResponse.fromjson(response);
      return right(logrespo);
    } on ServerException catch (e) {
      return left(e.errModel.errorMessage);
    }
  }
}
