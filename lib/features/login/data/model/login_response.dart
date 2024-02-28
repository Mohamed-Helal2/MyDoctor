class LoginResponse {
  final int code;
  final String message;
  final Map<String, dynamic> data;
  final bool status;

  LoginResponse(
      {required this.code,
      required this.message,
      required this.data,
      required this.status});

  factory LoginResponse.fromjson(Map<String, dynamic> json) {
    return LoginResponse(
        code: json['code'],
        message: json['message'],
        data: json['data'],
        status: json['status']);
  }
}

// class userdata {
//   final int Token;
//   final String userName;

//   userdata({required this.Token, required this.userName});
//   factory userdata.fromjson(Map<String, dynamic> json) {
//     return userdata(
//       Token: json['token'],
//       userName: json['username'],
//     );
//   }
// }
