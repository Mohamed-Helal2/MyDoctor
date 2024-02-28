class LoginState {}

final class logininitial extends LoginState {}

final class loginLoading extends LoginState {}

final class loginSucessl extends LoginState {}

final class loginFailure extends LoginState {
  final String error_message;

  loginFailure({required this.error_message});
}
