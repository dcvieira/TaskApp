import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

import 'errors.dart';

@immutable
abstract class ValueObject<Failure, T> {
  /// Creates a [ValueObject]
  const ValueObject();

  /// The value of this [ValueObject]
  Either<Failure, T> get value;

  /// If this is valid, returns the value.
  /// Otherwise, throws [UnexpectedValueError].
  ///
  /// This should be used when you have already validated the value,
  /// and so you expect it to be valid.
  ///
  /// Do not use this for validation (for example, by wrapping in a `try`/`catch`).
  /// Instead, use the [value] field, or the [isValid] getter.
  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  /// If this is valid, returns the value. Otherwise, returns [dflt].
  T getOrElse(T dflt) {
    return value.getOrElse(() => dflt);
  }

  /// True if this is valid.
  bool get isValid => value.isRight();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<Failure, T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class UniqueId extends ValueObject<ValueError, String> {
  @override
  final Either<ValueError, String> value;

  factory UniqueId() {
    return UniqueId._(
      right(const Uuid().v1()),
    );
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(
      right(uniqueId),
    );
  }

  const UniqueId._(this.value);
}

class ValueError {
  final String message;

  const ValueError(this.message);
}
