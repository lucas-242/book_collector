import 'package:book_collector/modules/login/domain/domain.dart';

/// {@template log_in_with_email_and_password_failure}
/// Thrown during the login process if a failure occurs.
/// https://pub.dev/documentation/firebase_auth/latest/firebase_auth/FirebaseAuth/signInWithEmailAndPassword.html
/// {@endtemplate}
class LogInWithEmailAndPasswordExceptionImpl implements LogInWithEmailAndPasswordException {
  /// {@macro log_in_with_email_and_password_failure}
  const LogInWithEmailAndPasswordExceptionImpl([
    this.message = 'An unknown exception occurred.',
  ]);

  /// Create an authentication message
  /// from a firebase authentication exception code.
  factory LogInWithEmailAndPasswordExceptionImpl.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const LogInWithEmailAndPasswordExceptionImpl(
          'Email is not valid or badly formatted.',
        );
      case 'user-disabled':
        return const LogInWithEmailAndPasswordExceptionImpl(
          'This user has been disabled. Please contact support for help.',
        );
      case 'user-not-found':
        return const LogInWithEmailAndPasswordExceptionImpl(
          'Email is not found, please create an account.',
        );
      case 'wrong-password':
        return const LogInWithEmailAndPasswordExceptionImpl(
          'Incorrect password, please try again.',
        );
      default:
        return const LogInWithEmailAndPasswordExceptionImpl();
    }
  }

  /// The associated error message.
  final String message;

  @override
  List<Object> get props => [message];
}
