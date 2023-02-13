import 'package:core/data/datasources/remote/remote.dart';

class AuthDatasource extends ApiDatasource {
  AuthDatasource() : super("auth");

  Future login(String email, String password) async {
    final response = await dio.post(
      '/login',
      data: {
        'email': email,
        'password': password,
      },
    );

    return response.data;
  }
}
