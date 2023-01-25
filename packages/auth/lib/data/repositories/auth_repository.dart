import 'package:core/domain/entities/error_entity.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import 'package:auth/data/datasources/remote/remote.dart';
import 'package:auth/data/dtos/dtos.dart';
import 'package:core/domain/entities/entities.dart';

class AuthRepository {
  static final AuthDatasource client = AuthDatasource();

  static Future<Either<ErrorEntity, UserDto>> login(
    String email,
    String password,
  ) async {
    try {
      final result = await client.dio.post('/login', data: {
        "email": email,
        "password": password,
      });

      return Either.right(UserDto.fromJson(result.data));
    } on DioError catch (error) {
      return Either.left(ErrorEntity(message: error.message));
    } catch (error) {
      return Either.left(
        const ErrorEntity(
            message:
                'Oops! Something went wrong, please try again or check out our help area'),
      );
    }
  }
}
