import 'package:go_router/go_router.dart';
import 'package:shopping_chart/features/login/presentation/views/login_view.dart';
import 'package:shopping_chart/features/login/presentation/views/new_password_page.dart';
import 'package:shopping_chart/features/login/presentation/views/otp_page.dart';
import 'package:shopping_chart/features/login/presentation/views/reset_password.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: '/resetPassword',
      builder: (context, state) => const ResetPassword(),
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
