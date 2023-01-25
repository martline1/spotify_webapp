// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthState _$$_AuthStateFromJson(Map<String, dynamic> json) => _$_AuthState(
      loggedIn: json['loggedIn'] as bool,
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      loginLoading: json['loginLoading'] as bool? ?? false,
      loginErrorMessage: json['loginErrorMessage'] as String? ?? '',
    );

Map<String, dynamic> _$$_AuthStateToJson(_$_AuthState instance) =>
    <String, dynamic>{
      'loggedIn': instance.loggedIn,
      'user': instance.user,
      'loginLoading': instance.loginLoading,
      'loginErrorMessage': instance.loginErrorMessage,
    };
