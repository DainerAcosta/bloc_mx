import 'package:bloc_mx/bloc_app_observer.dart';
import 'package:bloc_mx/features/init/blocs/auth/auth_bloc.dart';
import 'package:bloc_mx/features/init/blocs/login/login_bloc.dart';
import 'package:bloc_mx/features/init/blocs/onboarding/onboarding_bloc.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(() => OnboardingBloc());
  sl.registerLazySingleton(() => AuthBloc());
  sl.registerLazySingleton(() => LoginBloc());
  sl.registerLazySingleton(() => BlocAppObserver());
}
