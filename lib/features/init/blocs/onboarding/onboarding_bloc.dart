import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingInitial());

  @override
  Stream<OnboardingState> mapEventToState(
    OnboardingEvent event,
  ) async* {
    Random random = Random();
    List<OnboardingState> states= [NotOnboarded(), Onboarded()];
    // TODO(hendrix): use service or domain usecase to process request
    if (event is GetOnboardingStatus) {
      int index = random.nextInt(2);
      yield states[index];
      // yield NotOnboarded();
      // yield Onboarded();
    }
    if (event is SetOnboardingStatus) {
      var status = event.status;
      print('status: $status');
      // TODO(hendrix): save onboarded status using service or domain usecase.
      yield Onboarded();
    }
  }
}
