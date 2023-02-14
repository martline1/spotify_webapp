import 'package:core/utils/utils.dart';
import 'package:auth/data/datasources/remote/remote.dart';
import 'package:auth/data/repositories/repositories.dart';
import 'package:auth/domain/usecases/usecases.dart';
import 'package:auth/presentation/bloc/auth_bloc.dart';

class AuthDi extends DiSchema {
  @override
  void registerUsecases() {
    getIt.registerLazySingleton(() => LoginUsecase(authRepository: getIt()));
  }

  @override
  void registerBlocs() {
    getIt.registerLazySingleton(() => AuthBloc(loginUsecase: getIt()));
  }

  @override
  void registerRepositories() {
    getIt.registerLazySingleton(
        () => AuthRepository(authDatasource: AuthDatasource()));
  }
}
