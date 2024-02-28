class LoginrequestBody {
  final String email;
  final String password;

  LoginrequestBody({required this.email, required this.password});
  factory LoginrequestBody.fromjson(Map<String, dynamic> jsonData) {
    return LoginrequestBody(
        email: jsonData['email'], password: jsonData['password']);
  }
}

