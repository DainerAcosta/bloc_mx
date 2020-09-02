part of 'onboarding_bloc.dart';

@immutable
abstract class OnboardingEvent {}

class GetOnboardingStatus extends OnboardingEvent {}

class SetOnboardingStatus extends OnboardingEvent {
  SetOnboardingStatus(this.status);
  final bool status;
}
