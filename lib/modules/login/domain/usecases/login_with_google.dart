
import 'package:book_collector/modules/login/domain/domain.dart';

class LoginWithGoogle {
  final LoginRepository _repository;

  LoginWithGoogle({required LoginRepository repository})
      : _repository = repository;

  Future<void> call() async {
    await _repository.logInWithGoogle();
  }
}
