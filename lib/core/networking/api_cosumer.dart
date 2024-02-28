abstract class  ApiConsumer {
  Future<dynamic> get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryparams,
  });
  Future<dynamic> post(String path,
      {dynamic data,
      Map<String, dynamic>? queryparams,
      bool isformDta = false});
  Future<dynamic> patch(String path,
      {Object? data,
      Map<String, dynamic>? queryparams,
      bool isformDta = false});
  Future<dynamic> delete(String path,
      {Object? data,
      Map<String, dynamic>? queryparams,
      bool isformDta = false});
}
