import 'dart:async';

import 'package:bloc/bloc.dart';

import 'log-in-event.dart';
import 'log_in_state.dart';

class LoginBloc extends Bloc<LoginEvent, LogInState> {
  LoginBloc(this._authenticationRepository,)
      : super(LogInState()) {
    on<LoginUsernameChanged>(_onUsernameChanged);
    on<LoginPasswordChanged>(_onPasswordChanged);
    on<LoginSubmitted>(_onSubmitted);
  }

  final AuthenticationRepository _authenticationRepository;

  void _onUsernameChanged(
    LoginUsernameChanged event,
    Emitter<LogInState> emit,
  ) {}

  void _onPasswordChanged( LoginPasswordChanged event,
      Emitter<LogInState> emit,) {}

  void _onSubmitted( LoginSubmitted event,
      Emitter<LogInState> emit,) {}
}
