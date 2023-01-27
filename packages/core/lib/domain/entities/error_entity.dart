import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'error_entity.freezed.dart';
part 'error_entity.g.dart';

@freezed
class ErrorEntity with _$ErrorEntity {
  const factory ErrorEntity({
    required String message,
  }) = _ErrorEntity;

  factory ErrorEntity.fromJson(Map<String, Object?> json) =>
      _$ErrorEntityFromJson(json);
}
