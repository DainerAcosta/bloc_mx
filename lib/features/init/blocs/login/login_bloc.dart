import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_mx/features/init/models/user.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    // TODO(hendrix): use service or domain usecase to process request
    if (event is LoginUser) {
      yield LoggedInSuccessfully(User('Hendrix', 0xff42a5f5));
    }
  }
}
