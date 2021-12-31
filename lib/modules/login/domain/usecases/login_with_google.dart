
import 'package:book_collector/modules/login/domain/domain.dart';

class LoginWithGoogle {
  final ILoginRepository _repository;

  LoginWithGoogle({required ILoginRepository repository})
      : _repository = repository;

  Future<void> call() async {
    await _repository.logInWithGoogle();
  }
}
