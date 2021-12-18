import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:authentication_repository/src/external/datasources/firebase_datasource.dart';
import 'package:authentication_repository/src/infra/datasources/firebase_datasource.dart';
import 'package:cache/cache.dart';
import 'package:meta/meta.dart';

class AuthenticationRepository implements IAuthenticationRepository {
  final IFirebaseDatasource _firebaseDatasource;
  final CacheClient _cache;

  /// User cache key.
  /// Should only be used for testing purposes.
  @visibleForTesting
  static const userCacheKey = '__user_cache_key__';

  AuthenticationRepository({
    CacheClient? cache,
    IFirebaseDatasource? firebaseDatasource,
  })  : _cache = cache ?? CacheClient(),
        _firebaseDatasource = firebaseDatasource ?? FirebaseDatasource();

  @override
  User get currentUser => _cache.read<User>(key: userCacheKey) ?? User.empty;

  @override
  Future<void> logInWithEmailAndPassword(
      {required String email, required String password}) {
    return _firebaseDatasource.logInWithEmailAndPassword(
        email: email, password: password);
  }

  @override
  Future<void> logInWithGoogle() => _firebaseDatasource.logInWithGoogle();

  @override
  Future<void> logOut() => _firebaseDatasource.logOut();

  @override
  Future<void> signUp({required String email, required String password}) =>
      _firebaseDatasource.signUp(email: email, password: password);

  @override
  Stream<User> get user {
    return _firebaseDatasource.user.asBroadcastStream(
        onListen: (user) => {_cache.write(key: userCacheKey, value: user)});
  }
}
