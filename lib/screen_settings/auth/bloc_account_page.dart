import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_application_genesis/screen_settings/auth/authentication_repository.dart';
import 'package:my_application_genesis/screen_settings/auth/user.dart';

class AccountPageBloc extends Bloc<AccountPageEvent, AccountPageState> {
  AccountPageBloc({required AuthenticationRepository authenticationRepository})
      : _authenticationRepository = authenticationRepository,
        super(
          authenticationRepository.currentUser.isNotEmpty
              ? AccountPageState.authenticated(authenticationRepository.currentUser)
              : const AccountPageState.unauthenticated(),
        ) {
    on<_AppUserChanged>(_onUserChanged);
    on<AppLogoutRequested>(_onLogoutRequested);
    _userSubscription = _authenticationRepository.user.listen(
      (user) => add(_AppUserChanged(user)),
    );
  }

  final AuthenticationRepository _authenticationRepository;
  late final StreamSubscription<User> _userSubscription;

  void _onUserChanged(_AppUserChanged event, Emitter<AccountPageState> emit) {
    emit(
      event.user.isNotEmpty
          ? AccountPageState.authenticated(event.user)
          : const AccountPageState.unauthenticated(),
    );
  }

  void _onLogoutRequested(AppLogoutRequested event, Emitter<AccountPageState> emit) {
    unawaited(_authenticationRepository.logOut());
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}

sealed class AccountPageEvent {
  const AccountPageEvent();
}

final class AppLogoutRequested extends AccountPageEvent {
  const AppLogoutRequested();
}

final class _AppUserChanged extends AccountPageEvent {
  const _AppUserChanged(this.user);

  final User user;
}

enum AccountStatus {
  authenticated,
  unauthenticated,
}

final class AccountPageState extends Equatable {
  const AccountPageState._({
    required this.status,
    this.user = User.empty,
  });

  const AccountPageState.authenticated(User user)
      : this._(status: AccountStatus.authenticated, user: user);

  const AccountPageState.unauthenticated() : this._(status: AccountStatus.unauthenticated);

  final AccountStatus status;
  final User user;

  @override
  List<Object> get props => [status, user];
}
