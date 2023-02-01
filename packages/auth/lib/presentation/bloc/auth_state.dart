import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:auth/data/dtos/dtos.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool loggedIn,
    required UserDto user,
    @Default(false) bool rememberMe,
    @Default(false) bool loginLoading,
    @Default('') String loginErrorMessage,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, Object?> json) =>
      _$AuthStateFromJson(json);
}
