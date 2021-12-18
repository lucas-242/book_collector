import 'package:book_collector/modules/login/domain/domain.dart';

/// {@template sign_up_with_email_and_password_failure}
/// Thrown if during the sign up process if a failure occurs.
/// {@endtemplate}
class SignUpWithEmailAndPasswordExceptionImpl implements SignUpWithEmailAndPasswordException {
  /// {@macro sign_up_with_email_and_password_failure}
  const SignUpWithEmailAndPasswordExceptionImpl([
    this.message = 'An unknown exception occurred.',
  ]);

  /// Create an authentication message
  /// from a firebase authentication exception code.
  /// https://pub.dev/documentation/firebase_auth/latest/firebase_auth/FirebaseAuth/createUserWithEmailAndPassword.html
  factory SignUpWithEmailAndPasswordExceptionImpl.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const SignUpWithEmailAndPasswordExceptionImpl(
          'Email is not valid or badly formatted.',
        );
      case 'user-disabled':
        return const SignUpWithEmailAndPasswordExceptionImpl(
          'This user has been disabled. Please contact support for help.',
        );
      case 'email-already-in-use':
        return const SignUpWithEmailAndPasswordExceptionImpl(
          'An account already exists for that email.',
        );
      case 'operation-not-allowed':
        return const SignUpWithEmailAndPasswordExceptionImpl(
          'Operation is not allowed.  Please contact support.',
        );
      case 'weak-password':
        return const SignUpWithEmailAndPasswordExceptionImpl(
          'Please enter a stronger password.',
        );
      default:
        return const SignUpWithEmailAndPasswordExceptionImpl();
    }
  }

  /// The associated error message.
  final String message;

  @override
  List<Object> get props =>[message];
}