import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'routing_state.freezed.dart';
part 'routing_state.g.dart';

@freezed
class RoutingState with _$RoutingState {
  const factory RoutingState({
    required String routeName,
    @Default(null) Object? arguments,
    @Default(true) bool pushExecuted,
    @Default(true) bool popExecuted,
  }) = _RoutingState;

  factory RoutingState.fromJson(Map<String, Object?> json) =>
      _$RoutingStateFromJson(json);
}
