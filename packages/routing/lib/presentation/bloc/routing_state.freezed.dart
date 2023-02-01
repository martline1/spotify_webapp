// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routing_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoutingState _$RoutingStateFromJson(Map<String, dynamic> json) {
  return _RoutingState.fromJson(json);
}

/// @nodoc
mixin _$RoutingState {
  String get routeName => throw _privateConstructorUsedError;
  bool get firePop => throw _privateConstructorUsedError;
  Object? get arguments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoutingStateCopyWith<RoutingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutingStateCopyWith<$Res> {
  factory $RoutingStateCopyWith(
          RoutingState value, $Res Function(RoutingState) then) =
      _$RoutingStateCopyWithImpl<$Res, RoutingState>;
  @useResult
  $Res call({String routeName, bool firePop, Object? arguments});
}

/// @nodoc
class _$RoutingStateCopyWithImpl<$Res, $Val extends RoutingState>
    implements $RoutingStateCopyWith<$Res> {
  _$RoutingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeName = null,
    Object? firePop = null,
    Object? arguments = freezed,
  }) {
    return _then(_value.copyWith(
      routeName: null == routeName
          ? _value.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String,
      firePop: null == firePop
          ? _value.firePop
          : firePop // ignore: cast_nullable_to_non_nullable
              as bool,
      arguments: freezed == arguments ? _value.arguments : arguments,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoutingStateCopyWith<$Res>
    implements $RoutingStateCopyWith<$Res> {
  factory _$$_RoutingStateCopyWith(
          _$_RoutingState value, $Res Function(_$_RoutingState) then) =
      __$$_RoutingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String routeName, bool firePop, Object? arguments});
}

/// @nodoc
class __$$_RoutingStateCopyWithImpl<$Res>
    extends _$RoutingStateCopyWithImpl<$Res, _$_RoutingState>
    implements _$$_RoutingStateCopyWith<$Res> {
  __$$_RoutingStateCopyWithImpl(
      _$_RoutingState _value, $Res Function(_$_RoutingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeName = null,
    Object? firePop = null,
    Object? arguments = freezed,
  }) {
    return _then(_$_RoutingState(
      routeName: null == routeName
          ? _value.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String,
      firePop: null == firePop
          ? _value.firePop
          : firePop // ignore: cast_nullable_to_non_nullable
              as bool,
      arguments: freezed == arguments ? _value.arguments : arguments,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoutingState with DiagnosticableTreeMixin implements _RoutingState {
  const _$_RoutingState(
      {required this.routeName,
      this.firePop = false,
      this.arguments = const {}});

  factory _$_RoutingState.fromJson(Map<String, dynamic> json) =>
      _$$_RoutingStateFromJson(json);

  @override
  final String routeName;
  @override
  @JsonKey()
  final bool firePop;
  @override
  @JsonKey()
  final Object? arguments;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoutingState(routeName: $routeName, firePop: $firePop, arguments: $arguments)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RoutingState'))
      ..add(DiagnosticsProperty('routeName', routeName))
      ..add(DiagnosticsProperty('firePop', firePop))
      ..add(DiagnosticsProperty('arguments', arguments));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoutingState &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName) &&
            (identical(other.firePop, firePop) || other.firePop == firePop) &&
            const DeepCollectionEquality().equals(other.arguments, arguments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, routeName, firePop,
      const DeepCollectionEquality().hash(arguments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoutingStateCopyWith<_$_RoutingState> get copyWith =>
      __$$_RoutingStateCopyWithImpl<_$_RoutingState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoutingStateToJson(
      this,
    );
  }
}

abstract class _RoutingState implements RoutingState {
  const factory _RoutingState(
      {required final String routeName,
      final bool firePop,
      final Object? arguments}) = _$_RoutingState;

  factory _RoutingState.fromJson(Map<String, dynamic> json) =
      _$_RoutingState.fromJson;

  @override
  String get routeName;
  @override
  bool get firePop;
  @override
  Object? get arguments;
  @override
  @JsonKey(ignore: true)
  _$$_RoutingStateCopyWith<_$_RoutingState> get copyWith =>
      throw _privateConstructorUsedError;
}
