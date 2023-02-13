import 'package:fpdart/fpdart.dart';

import 'package:auth/data/dtos/dtos.dart';
import 'package:auth/data/repositories/repositories.dart';
import 'package:core/domain/entities/entities.dart';
import 'package:auth/presentation/bloc/auth_bloc.dart';

class LoginUsecase {
  final AuthRepository authRepository;

  LoginUsecase({required this.authRepository});

  Future<Either<ErrorEntity, UserDto>> call(LoginEvent event) async {
    return authRepository.login(event.email, event.password);
  }
}
