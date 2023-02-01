// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routing_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoutingState _$$_RoutingStateFromJson(Map<String, dynamic> json) =>
    _$_RoutingState(
      routeName: json['routeName'] as String,
      firePop: json['firePop'] as bool? ?? false,
      arguments: json['arguments'] ?? const {},
    );

Map<String, dynamic> _$$_RoutingStateToJson(_$_RoutingState instance) =>
    <String, dynamic>{
      'routeName': instance.routeName,
      'firePop': instance.firePop,
      'arguments': instance.arguments,
    };
