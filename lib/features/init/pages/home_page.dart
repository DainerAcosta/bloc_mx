import 'package:bloc_mx/features/init/models/user.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Bienvenido, ${user.name}'),
      ),
      backgroundColor: Color(user.favoriteColor),
    );
  }

  final User user;
}
