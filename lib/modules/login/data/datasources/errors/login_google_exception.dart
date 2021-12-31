import 'package:book_collector/modules/login/domain/domain.dart';

/// {@template log_in_with_google_failure}
/// Thrown during the sign in with google process if a failure occurs.
/// https://pub.dev/documentation/firebase_auth/latest/firebase_auth/FirebaseAuth/signInWithCredential.html
/// {@endtemplate}
class LogInWithGoogleException implements ILogInWithGoogleException {
  /// {@macro log_in_with_google_failure}
  LogInWithGoogleException([
    this.message = 'An unknown exception occurred.',
  ]);

  /// Create an authentication message
  /// from a firebase authentication exception code.
  factory LogInWithGoogleException.fromCode(String code) {
    switch (code) {
      case 'account-exists-with-different-credential':
        return LogInWithGoogleException(
          'Account exists with different credentials.',
        );
      case 'invalid-credential':
        return LogInWithGoogleException(
          'The credential received is malformed or has expired.',
        );
      case 'operation-not-allowed':
        return LogInWithGoogleException(
          'Operation is not allowed.  Please contact support.',
        );
      case 'user-disabled':
        return LogInWithGoogleException(
          'This user has been disabled. Please contact support for help.',
        );
      case 'user-not-found':
        return LogInWithGoogleException(
          'Email is not found, please create an account.',
        );
      case 'wrong-password':
        return LogInWithGoogleException(
          'Incorrect password, please try again.',
        );
      case 'invalid-verification-code':
        return LogInWithGoogleException(
          'The credential verification code received is invalid.',
        );
      case 'invalid-verification-id':
        return LogInWithGoogleException(
          'The credential verification ID received is invalid.',
        );
      default:
        return LogInWithGoogleException();
    }
  }

  /// The associated error message.
  final String message;

  @override
  List<Object> get props => [message];
}
