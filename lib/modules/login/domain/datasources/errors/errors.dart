import 'package:book_collector/core/models/errors/exception.dart';

abstract class ILogInWithGoogleException extends ServerException {
  ILogInWithGoogleException(String message) : super(message);
}

abstract class ILogInWithEmailAndPasswordException extends ServerException {
  ILogInWithEmailAndPasswordException(String message) : super(message);
}

abstract class ILogOutException extends ServerException {
  ILogOutException(String message) : super(message);
}

abstract class ISignUpWithEmailAndPasswordException extends ServerException {
  ISignUpWithEmailAndPasswordException(String message) : super(message);
}
