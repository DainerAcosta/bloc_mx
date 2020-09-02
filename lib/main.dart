import 'package:bloc/bloc.dart';
import 'package:bloc_mx/bloc_app_observer.dart';
import 'package:bloc_mx/features/init/widgets/onboarding_path.dart';
import 'package:bloc_mx/injectable.dart';
import 'package:flutter/material.dart';

Future<void> main(List<String> args) async {
  init();
  runApp(BlocApp());
}

class BlocApp extends StatelessWidget {
  const BlocApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Bloc.observer = sl<BlocAppObserver>();
    return MaterialApp(
      home: Scaffold(
        body: OnBoardingPath(),
      ),
    );
  }
}
