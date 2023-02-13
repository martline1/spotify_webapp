// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routing_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoutingState _$$_RoutingStateFromJson(Map<String, dynamic> json) =>
    _$_RoutingState(
      routeName: json['routeName'] as String,
      arguments: json['arguments'] ?? null,
      pushExecuted: json['pushExecuted'] as bool? ?? true,
      popExecuted: json['popExecuted'] as bool? ?? true,
    );

Map<String, dynamic> _$$_RoutingStateToJson(_$_RoutingState instance) =>
    <String, dynamic>{
      'routeName': instance.routeName,
      'arguments': instance.arguments,
      'pushExecuted': instance.pushExecuted,
      'popExecuted': instance.popExecuted,
    };
