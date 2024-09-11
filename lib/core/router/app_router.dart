import 'package:go_router/go_router.dart';
import 'package:shopping_chart/features/auth/presentation/views/login_view.dart';
import 'package:shopping_chart/features/auth/presentation/views/new_password_page.dart';
import 'package:shopping_chart/features/auth/presentation/views/otp_page.dart';
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
      path: '/otp',
      builder: (context, state) => const OtpPage(),
    ),
    GoRoute(
      path: '/newPasswordPage',
      builder: (context, state) => const NewPasswordPage(),
    ),
  ],
);
