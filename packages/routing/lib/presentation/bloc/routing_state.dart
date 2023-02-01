import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'routing_state.freezed.dart';
part 'routing_state.g.dart';

@freezed
class RoutingState with _$RoutingState {
  const factory RoutingState({
    required String routeName,
    @Default(false) bool firePop,
    @Default({}) Object? arguments,
  }) = _RoutingState;

  factory RoutingState.fromJson(Map<String, Object?> json) =>
      _$RoutingStateFromJson(json);
}
