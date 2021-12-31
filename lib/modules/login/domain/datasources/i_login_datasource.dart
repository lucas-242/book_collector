

import 'package:book_collector/modules/login/domain/domain.dart';

/// {@template authentication_repository}
/// Datasource which manages user authentication with Firebase.
/// {@endtemplate}
abstract class ILoginDatasource {
   /// Stream of [AppUser] which will emit the current user when
  /// the authentication state changes.
  ///
  /// Emits [AppUser.empty] if the user is not authenticated.
  Stream<AppUser> get user;

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