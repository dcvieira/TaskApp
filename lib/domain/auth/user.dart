import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taskapp/domain/core/value_object.dart';

part 'user.freezed.dart';

@freezed
abstract class ApplicationUser with _$ApplicationUser {
  const factory ApplicationUser({
    required UniqueId id,
  }) = _ApplicationUser;
}
