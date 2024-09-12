import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/services/service_locator.dart';
import 'package:shopping_chart/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:shopping_chart/features/auth/presentation/views/login/login_view.dart';
import 'package:shopping_chart/features/auth/presentation/views/reset_password/reset_new_password_view.dart';
import 'package:shopping_chart/features/auth/presentation/views/reset_password/reset_password_otp_view_.dart';
import 'package:shopping_chart/features/auth/presentation/views/reset_password/reset_password_view.dart';
import 'package:shopping_chart/features/auth/presentation/views/signup/sign_up_otp_view.dart';
import 'package:shopping_chart/features/auth/presentation/views/signup/sign_up_profile.dart';
import 'package:shopping_chart/features/auth/presentation/views/signup/sign_up_view.dart';
import 'package:shopping_chart/features/auth/presentation/views/signup/success_sign_up_view.dart';
import 'package:shopping_chart/features/home/presentation/views/home_view.dart';
import 'package:shopping_chart/features/home/presentation/widgets/nav_bar_widgets.dart';
import 'package:shopping_chart/features/profile/presentation/views/change_password.dart';
import 'package:shopping_chart/features/profile/presentation/views/edit_profile.dart';
import 'package:shopping_chart/features/profile/presentation/views/profile_page.dart';

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
    GoRoute(
      path: '/profilePage',
      builder: (context, state) => const ProfilePage(),
    ),
    GoRoute(
      path: '/changePassword',
      builder: (context, state) => const ChangePassword(),
    ),
    GoRoute(
      path: '/editProfile',
      builder: (context, state) => const EditProfile(),
    ),
  ],
);
