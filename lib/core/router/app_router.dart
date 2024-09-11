import 'package:go_router/go_router.dart';
import 'package:shopping_chart/features/auth/presentation/views/login_page.dart';
import 'package:shopping_chart/features/auth/presentation/views/sign_up_page.dart';
import 'package:shopping_chart/features/auth/presentation/views/sign_up_profile.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => const SignUpPage(),
    ),
     GoRoute(
      path: '/signupProfile',
      builder: (context, state) => const SignUpProfile(),
    ),
  ],
);
