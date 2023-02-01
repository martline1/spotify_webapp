import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:auth/data/dtos/dtos.dart';
import 'package:auth/domain/usecases/usecases.dart';

import 'auth_state.dart';

part 'auth_event.dart';

/// [Bloc]s comunicate to [usecases] to receive [dtos],
/// during the collection of [dtos] or afterwards, they can [emit] states.
///
/// Sometimes [Bloc]s send events to other [Bloc]s.
///
/// It is preferable to have a minimal logic defined in the [Bloc],
/// and must of the logic defined in the [dtos].
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  static final initialState = AuthState(
    loggedIn: false,
    rememberMe: false,
    user: UserDto.empty(),
  );

  AuthBloc() : super(initialState) {
    on<LoginEvent>((event, emit) async {
      emit(state.copyWith(loginLoading: true));

      final errorOrUser = await LoginUsecase.call(event);

      errorOrUser.fold(
        (error) => emit(state.copyWith(loginErrorMessage: error.message)),
        (user) => emit(state.copyWith(loggedIn: true, user: user)),
      );

      emit(state.copyWith(loginLoading: false));
    });

    on<LogoutEvent>((event, emit) async {
      emit(state.copyWith(loggedIn: false, user: UserDto.empty()));
    });

    on<ToggleRememberMeEvent>((event, emit) async {
      emit(state.copyWith(rememberMe: !state.rememberMe));
    });
  }
}
