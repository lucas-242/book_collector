import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:book_collector/modules/login/domain/domain.dart';
import 'package:book_collector/shared/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:very_good_analysis/very_good_analysis.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({required LoginRepository loginRepository})
      : _loginRepository = loginRepository,
        super(
          loginRepository.currentUser.isEmpty
              ? const AppState.unauthenticated()
              : AppState.authenticated(loginRepository.currentUser),
        ) {
    on<AppUserChanged>(_onUserChanged);
    on<AppLogoutRequested>(_onLogoutRequested);
    _userSubscription = _loginRepository.user.listen(
      (user) => add(AppUserChanged(user)),
    );
  }

  final LoginRepository _loginRepository;
  late final StreamSubscription<AppUser> _userSubscription;

  void _onUserChanged(AppUserChanged event, Emitter<AppState> emit) {
    emit(event.user.isNotEmpty
        ? AppState.authenticated(event.user)
        : const AppState.unauthenticated());
  }

  void _onLogoutRequested(AppLogoutRequested event, Emitter<AppState> emit) {
    unawaited(_loginRepository.logOut());
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
