import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mydoctor/features/login/data/model/login_request_body.dart';
import 'package:mydoctor/features/login/data/repos/loginrepo.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final FormKey = GlobalKey<FormState>();

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  LoginCubit(this.loginRepo) : super(logininitial());
  final LoginRepo loginRepo;
  Logiin(
       LoginrequestBody loginrequestBody
      ) async {
    emit(loginLoading());
    final response = await loginRepo.Login(loginrequestBody);
    response.fold((error) => emit(loginFailure(error_message: error)),
        (logininmodel) => emit(loginSucessl()));
  }
}
