import 'package:book_collector/core/errors/exception.dart';

abstract class LogInWithGoogleException extends ServerException {
  LogInWithGoogleException(String message) : super(message);
}

abstract class LogInWithEmailAndPasswordException extends ServerException {
  LogInWithEmailAndPasswordException(String message) : super(message);
}

abstract class LogOutException extends ServerException {
  LogOutException(String message) : super(message);
}

abstract class SignUpWithEmailAndPasswordException extends ServerException {
  SignUpWithEmailAndPasswordException(String message) : super(message);
}
