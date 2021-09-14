import 'package:dartz/dartz.dart';
import 'package:taskapp/domain/auth/auth_failure.dart';
import 'package:taskapp/domain/auth/user.dart';
import 'package:taskapp/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> siginWithGoogle();

  Option<ApplicationUser> getSignedInUser();
  Future<void> signOut();
}
