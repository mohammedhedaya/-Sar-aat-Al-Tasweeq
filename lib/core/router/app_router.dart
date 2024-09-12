import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../services/service_locator.dart';
import '../../features/auth/presentation/cubit/auth_cubit.dart';
import '../../features/auth/presentation/views/login/login_view.dart';
import '../../features/auth/presentation/views/reset_password/reset_new_password_view.dart';
import '../../features/auth/presentation/views/reset_password/reset_password_otp_view_.dart';
import '../../features/auth/presentation/views/reset_password/reset_password_view.dart';
import '../../features/auth/presentation/views/signup/sign_up_otp_view.dart';
import '../../features/auth/presentation/views/signup/sign_up_profile.dart';
import '../../features/auth/presentation/views/signup/sign_up_view.dart';
import '../../features/auth/presentation/views/signup/success_sign_up_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/home/presentation/widgets/nav_bar_widgets.dart';
import '../../features/subscribe_package/presentation/views/subscribe_to_the_package_view.dart';


final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<AuthCubit>(),
        child: const LoginView(),
      ),
    ),
    GoRoute(
      path: '/resetPasswordView',
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<AuthCubit>(),
        child: const ResetPasswordView(),
      ),
    ),
    GoRoute(
      path: '/resetPasswordOTPView',
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<AuthCubit>(),
        child: const ResetPasswordOTPView(),
      ),
    ),
    GoRoute(
      path: '/resetNewPasswordView',
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<AuthCubit>(),
        child: const ResetNewPasswordView(),
      ),
    ),
    GoRoute(
      path: '/signUpView',
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<AuthCubit>(),
        child: const SignUpView(),
      ),
    ),
    GoRoute(
      path: '/signUpProfileView',
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<AuthCubit>(),
        child: const SignUpProfileView(),
      ),
    ),
    GoRoute(
      path: '/signUpOTPView',
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<AuthCubit>(),
        child: const SignUpOTPView(),
      ),
    ),
    GoRoute(
      path: '/successSignUpView',
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<AuthCubit>(),
        child: const SuccessSignUpView(),
      ),
    ),
    GoRoute(
      path: '/navBarView',
      builder: (context, state) => const UserMainLayoutScreen(),
    ),
    GoRoute(
      path: '/homeView',
      builder: (context, state) => const HomeView(),
    ),
  ],
);
