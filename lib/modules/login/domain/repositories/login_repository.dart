import 'dart:async';

import 'package:book_collector/modules/login/login.dart';

/// {@template authentication_repository}
/// Repository which manages user authentication.
/// {@endtemplate}
abstract class LoginRepository {
  /// Stream of [AppUser] which will emit the current user when
  /// the authentication state changes.
  ///
  /// Emits [AppUser.empty] if the user is not authenticated.
  Stream<AppUser> get user;

  /// Returns the current cached user.
  /// Defaults to [AppUser.empty] if there is no cached user.
  AppUser get currentUser;

  /// Signs in with the provided [email] and [password].
  ///
  /// Throws a [LogInWithEmailAndPasswordException] if an exception occurs.
  Future<void> logInWithEmailAndPassword({
    required String email,
    required String password,
  });

  /// Starts the Sign In with Google Flow.
  ///
  /// Throws a [LogInWithGoogleException] if an exception occurs.
  Future<void> logInWithGoogle();

  /// Signs out the current user which will emit
  /// [AppUser.empty] from the [user] Stream.
  ///
  /// Throws a [LogOutException] if an exception occurs.
  Future<void> logOut();

  /// Creates a new user with the provided [email] and [password].
  ///
  /// Throws a [SignUpWithEmailAndPasswordException] if an exception occurs.
  Future<void> signUp({required String email, required String password});
}
