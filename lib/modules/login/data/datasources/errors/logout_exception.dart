import 'package:book_collector/modules/login/domain/domain.dart';

/// Thrown during the logout process if a failure occurs.
class LogOutException implements ILogOutException {
  @override
  String get message => 'An unknown exception occurred.';

  @override
  List<Object> get props => [message];
}
