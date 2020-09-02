part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginExecuting extends LoginState {}

class LoginFailure extends LoginState {
  LoginFailure(this.message);
  final String message;
}

class LoggedInSuccessfully extends LoginState {
  LoggedInSuccessfully(this.user);
  final User user;
}
