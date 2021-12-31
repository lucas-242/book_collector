import 'package:book_collector/modules/login/domain/domain.dart';

class LoginWithEmail {
  final ILoginRepository _repository;

  LoginWithEmail({required ILoginRepository repository})
      : _repository = repository;

  Future<void> call({required String email, required String password}) async {
    return await _repository.logInWithEmailAndPassword(
        email: email, password: password);
  }
}
