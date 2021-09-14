// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ApplicationUserTearOff {
  const _$ApplicationUserTearOff();

  _ApplicationUser call({required UniqueId id}) {
    return _ApplicationUser(
      id: id,
    );
  }
}

/// @nodoc
const $ApplicationUser = _$ApplicationUserTearOff();

/// @nodoc
mixin _$ApplicationUser {
  UniqueId get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplicationUserCopyWith<ApplicationUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationUserCopyWith<$Res> {
  factory $ApplicationUserCopyWith(
          ApplicationUser value, $Res Function(ApplicationUser) then) =
      _$ApplicationUserCopyWithImpl<$Res>;
  $Res call({UniqueId id});
}

/// @nodoc
class _$ApplicationUserCopyWithImpl<$Res>
    implements $ApplicationUserCopyWith<$Res> {
  _$ApplicationUserCopyWithImpl(this._value, this._then);

  final ApplicationUser _value;
  // ignore: unused_field
  final $Res Function(ApplicationUser) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc
abstract class _$ApplicationUserCopyWith<$Res>
    implements $ApplicationUserCopyWith<$Res> {
  factory _$ApplicationUserCopyWith(
          _ApplicationUser value, $Res Function(_ApplicationUser) then) =
      __$ApplicationUserCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id});
}

/// @nodoc
class __$ApplicationUserCopyWithImpl<$Res>
    extends _$ApplicationUserCopyWithImpl<$Res>
    implements _$ApplicationUserCopyWith<$Res> {
  __$ApplicationUserCopyWithImpl(
      _ApplicationUser _value, $Res Function(_ApplicationUser) _then)
      : super(_value, (v) => _then(v as _ApplicationUser));

  @override
  _ApplicationUser get _value => super._value as _ApplicationUser;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_ApplicationUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$_ApplicationUser implements _ApplicationUser {
  const _$_ApplicationUser({required this.id});

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'ApplicationUser(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApplicationUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ApplicationUserCopyWith<_ApplicationUser> get copyWith =>
      __$ApplicationUserCopyWithImpl<_ApplicationUser>(this, _$identity);
}

abstract class _ApplicationUser implements ApplicationUser {
  const factory _ApplicationUser({required UniqueId id}) = _$_ApplicationUser;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ApplicationUserCopyWith<_ApplicationUser> get copyWith =>
      throw _privateConstructorUsedError;
}
