import 'package:fpdart/fpdart.dart';

import 'package:auth/data/dtos/dtos.dart';
import 'package:auth/data/repositories/repositories.dart';
import 'package:core/domain/entities/entities.dart';
import 'package:auth/presentation/bloc/auth_bloc.dart';

class LoginUsecase {
  static Future<Either<ErrorEntity, UserDto>> call(LoginEvent event) async {
    return AuthRepository.login(event.email, event.password);
  }
}
