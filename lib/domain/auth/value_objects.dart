import 'package:dartz/dartz.dart';
import 'package:taskapp/domain/core/value_object.dart';

class EmailAddress extends ValueObject<EmailAddressFailure, String> {
  @override
  final Either<EmailAddressFailure, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      _validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);

  static Either<EmailAddressFailure, String> _validateEmailAddress(
      String input) {
    const emailRegex =
        r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
    if (RegExp(emailRegex).hasMatch(input)) {
      return right(input);
    } else {
      return left(const EmailAddressFailure('E-mails is invalid'));
    }
  }
}

class EmailAddressFailure {
  final String message;

  const EmailAddressFailure(this.message);
}

class Password extends ValueObject<PasswordFailure, String> {
  @override
  final Either<PasswordFailure, String> value;

  factory Password(String input) {
    return Password._(
      _validatePassword(input),
    );
  }

  const Password._(this.value);

  static Either<PasswordFailure, String> _validatePassword(String input) {
    // You can also add some advanced password checks (uppercase/lowercase, at least 1 number, ...)
    if (input.length >= 6) {
      return right(input);
    } else {
      return left(const PasswordFailure("Invalid Password"));
    }
  }
}

class PasswordFailure {
  final String message;

  const PasswordFailure(this.message);
}
