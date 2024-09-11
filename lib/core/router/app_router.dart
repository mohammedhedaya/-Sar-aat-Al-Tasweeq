import 'package:go_router/go_router.dart';
import 'package:shopping_chart/features/auth/presentation/views/login_view.dart';
import 'package:shopping_chart/features/auth/presentation/views/reset_new_password_view.dart';
import 'package:shopping_chart/features/auth/presentation/views/reset_password_otp_view_.dart';
import 'package:shopping_chart/features/auth/presentation/views/reset_password_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: '/resetPasswordView',
      builder: (context, state) => const ResetPasswordView(),
    ),
    GoRoute(
      path: '/resetPasswordOTPView',
      builder: (context, state) => const ResetPasswordOTPView(),
    ),
    GoRoute(
      path: '/resetNewPasswordView',
      builder: (context, state) => const ResetNewPasswordView(),
    ),
  ],
);
