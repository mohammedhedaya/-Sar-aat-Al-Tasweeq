import 'package:go_router/go_router.dart';
import 'package:shopping_chart/features/auth/presentation/views/login_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginPage(),
    ),
  ],
);
