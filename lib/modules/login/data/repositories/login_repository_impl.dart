import 'dart:async';

import 'package:book_collector/core/cache/cache.dart';
import 'package:book_collector/modules/login/domain/domain.dart';
import 'package:meta/meta.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginDatasource _loginDatasource;
  final CacheClient _cache;

  /// User cache key.
  /// Should only be used for testing purposes.
  @visibleForTesting
  static const userCacheKey = '__user_cache_key__';

  LoginRepositoryImpl({
    required CacheClient cache,
    required LoginDatasource loginDatasource,
  })  : _cache = cache,
        _loginDatasource = loginDatasource;

  @override
  User get currentUser => _cache.read<User>(key: userCacheKey) ?? User.empty;

  @override
  Future<void>
      logInWithEmailAndPassword(
          {required String email, required String password}) {
    return _loginDatasource.logInWithEmailAndPassword(
        email: email, password: password);
  }

  @override
  Future<void> logInWithGoogle() =>
      _loginDatasource.logInWithGoogle();

  @override
  Future<void> logOut() => _loginDatasource.logOut();

  @override
  Future<void> signUp(
          {required String email, required String password}) =>
      _loginDatasource.signUp(email: email, password: password);

  @override
  Stream<User> get user {
    return _loginDatasource.user.asBroadcastStream(
        onListen: (user) => {_cache.write(key: userCacheKey, value: user)});
  }
}
