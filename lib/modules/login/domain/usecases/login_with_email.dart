import 'package:book_collector/modules/login/domain/domain.dart';

class LoginWithEmail {
  final LoginRepository _repository;

  LoginWithEmail({required LoginRepository repository})
      : _repository = repository;

  Future<void> call({required String email, required String password}) async {
    return await _repository.logInWithEmailAndPassword(
        email: email, password: password);
  }
}
