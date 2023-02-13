import 'package:core/domain/entities/error_entity.dart';
import 'package:fpdart/fpdart.dart';

import 'package:auth/data/datasources/remote/remote.dart';
import 'package:auth/data/dtos/dtos.dart';
import 'package:core/domain/entities/entities.dart';

class AuthRepository {
  final AuthDatasource authDatasource;

  AuthRepository({required this.authDatasource});

  Future<Either<ErrorEntity, UserDto>> login(
    String email,
    String password,
  ) async {
    try {
      final result = await authDatasource.login(email, password);

      return Either.right(UserDto.fromJson(result));
    } catch (error) {
      return Either.left(
        const ErrorEntity(
            message:
                'Oops! Something went wrong, please try again or check out our help area'),
      );
    }
  }
}
