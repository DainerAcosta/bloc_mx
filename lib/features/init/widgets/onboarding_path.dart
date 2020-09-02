import 'package:bloc_mx/features/init/blocs/onboarding/onboarding_bloc.dart';
import 'package:bloc_mx/features/init/pages/onboarding_page.dart';
import 'package:bloc_mx/features/init/widgets/auth_path.dart';
import 'package:bloc_mx/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingPath extends StatelessWidget {
  const OnBoardingPath({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingBloc>(
      create: (BuildContext context) =>
          sl<OnboardingBloc>()..add(GetOnboardingStatus()),
      child: BlocListener<OnboardingBloc, OnboardingState>(
        listener: (BuildContext context, OnboardingState state) {
          if (state is Onboarded) {
            print('go to auth path');
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => AuthPath()),
              (_) => false,
            );
          }
          if (state is NotOnboarded) {
            print('show onboarding page');
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => OnboardingPage()),
              (_) => false,
            );
          }
        },
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
