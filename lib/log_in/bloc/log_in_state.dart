import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

final class LogInState extends Equatable {
  final String username;
  final String password;
  final FormzSubmissionStatus status;

  const LogInState({
    this.status = FormzSubmissionStatus.initial,
    this.password = '',
    this.username = '',
  });
  @override
  List<Object> get props {
    return [username, password];
  }
}
enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  final _controller = StreamController<AuthenticationStatus>();

  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  Future<void> logIn({
    required String username,
    required String password,
  }) async {
    await Future.delayed(
      const Duration(milliseconds: 300),
          () => _controller.add(AuthenticationStatus.authenticated),
    );
  }

  void logOut() {
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void dispose() => _controller.close();
}
