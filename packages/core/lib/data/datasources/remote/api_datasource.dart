import 'package:dio/dio.dart';

class ApiDatasource {
  static const apiUrl = 'https://api.example.com';

  BaseOptions options = BaseOptions(
    baseUrl: apiUrl,
    headers: {
      'Content-Type': 'application/json',
    },
  );

  ApiDatasource([String? subPath]) {
    if (subPath != null) {
      String parsedSubPath =
          subPath.startsWith('/') ? subPath.substring(1) : subPath;

      options = options.copyWith(
        baseUrl: '$apiUrl/$parsedSubPath',
      );
    }
  }

  Dio get dio {
    return Dio(options);
  }
}
