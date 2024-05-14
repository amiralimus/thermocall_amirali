sealed class AuthenticationEvent {
  const AuthenticationEvent();
}

sealed class LoginEvent {
  const LoginEvent();

  @override
  List<Object> get props => [];
}
enum AuthenticationStatus { unknown, authenticated, unauthenticated }

final class LoginUsernameChanged extends LoginEvent {
  const LoginUsernameChanged(this.username);

  final String username;

  @override
  List<Object> get props => [username];
}

final class LoginPasswordChanged extends LoginEvent {
  const LoginPasswordChanged(this.password);

  final String password;

  @override
  List<Object> get props => [password];
}

final class LoginSubmitted extends LoginEvent {
  const LoginSubmitted();
}

final class _AuthenticationStatusChanged extends AuthenticationEvent {
  const _AuthenticationStatusChanged(this.status);

  final AuthenticationStatus status;
}
