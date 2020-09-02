part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginUser extends LoginEvent {
  LoginUser(this.email, this.password);
  final String email;
  final String password;
}
