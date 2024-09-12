import 'package:get_it/get_it.dart';
import '../../features/auth/presentation/cubit/auth_cubit.dart';
import '../cache/cache_helper.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerFactory<AuthCubit>(() => AuthCubit());
}
