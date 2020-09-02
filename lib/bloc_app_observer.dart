import 'package:bloc/bloc.dart';

class BlocAppObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object event) {
    print('observer->event: $event');
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print('delegate->transition: $transition');
    super.onTransition(bloc, transition);
  }
}
