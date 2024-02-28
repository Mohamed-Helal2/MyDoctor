class ErrorModel {
  final int code;
  final String errorMessage;

  ErrorModel({
    required this.code,
    required this.errorMessage,
  });

  factory ErrorModel.fromjson(Map<String, dynamic> json) {
    return ErrorModel(
      code: json['code'],
      errorMessage: json['message'],
    );
  }
}
