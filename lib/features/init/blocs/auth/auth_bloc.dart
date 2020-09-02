import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:bloc_mx/features/init/models/user.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    Random random = Random();
    List<AuthState> states = [
      Unauthenticated(),
      Authenticated(User('Hendrix', 0xff42a5f5)),
    ];
    // TODO(hendrix): use service or domain usecase to process request
    if (event is CheckIfAuthenticated) {
      int index = random.nextInt(2);
      yield states[index];
      // yield Authenticated(User('Hendrix', 0xff42a5f5));
      // yield Unauthenticated();
    }
  }
}
