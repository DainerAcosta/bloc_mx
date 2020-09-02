import 'package:bloc_mx/features/init/blocs/auth/auth_bloc.dart';
import 'package:bloc_mx/features/init/models/user.dart';
import 'package:bloc_mx/features/init/pages/home_page.dart';
import 'package:bloc_mx/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthPath extends StatelessWidget {
  const AuthPath({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (BuildContext context) =>
          sl<AuthBloc>()..add(CheckIfAuthenticated()),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (BuildContext context, AuthState state) {
          if (state is Authenticated) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) => HomePage(user: state.user)),
              (_) => false,
            );
          }
          if (state is Unauthenticated) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      HomePage(user: User('Guest', 0xff3de0cc))),
              (_) => false,
            );
          }
        },
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
    // return Container(
    //   child: Text('onboarding path'),
    // );
  }
}
