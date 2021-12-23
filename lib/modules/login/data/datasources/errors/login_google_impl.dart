import 'package:book_collector/modules/login/domain/domain.dart';

/// {@template log_in_with_google_failure}
/// Thrown during the sign in with google process if a failure occurs.
/// https://pub.dev/documentation/firebase_auth/latest/firebase_auth/FirebaseAuth/signInWithCredential.html
/// {@endtemplate}
class LogInWithGoogleExceptionImpl implements LogInWithGoogleException {
  /// {@macro log_in_with_google_failure}
  LogInWithGoogleExceptionImpl([
    this.message = 'An unknown exception occurred.',
  ]);

  /// Create an authentication message
  /// from a firebase authentication exception code.
  factory LogInWithGoogleExceptionImpl.fromCode(String code) {
    switch (code) {
      case 'account-exists-with-different-credential':
        return LogInWithGoogleExceptionImpl(
          'Account exists with different credentials.',
        );
      case 'invalid-credential':
        return LogInWithGoogleExceptionImpl(
          'The credential received is malformed or has expired.',
        );
      case 'operation-not-allowed':
        return LogInWithGoogleExceptionImpl(
          'Operation is not allowed.  Please contact support.',
        );
      case 'user-disabled':
        return LogInWithGoogleExceptionImpl(
          'This user has been disabled. Please contact support for help.',
        );
      case 'user-not-found':
        return LogInWithGoogleExceptionImpl(
          'Email is not found, please create an account.',
        );
      case 'wrong-password':
        return LogInWithGoogleExceptionImpl(
          'Incorrect password, please try again.',
        );
      case 'invalid-verification-code':
        return LogInWithGoogleExceptionImpl(
          'The credential verification code received is invalid.',
        );
      case 'invalid-verification-id':
        return LogInWithGoogleExceptionImpl(
          'The credential verification ID received is invalid.',
        );
      default:
        return LogInWithGoogleExceptionImpl();
    }
  }

  /// The associated error message.
  final String message;

  @override
  List<Object> get props => [message];
}
