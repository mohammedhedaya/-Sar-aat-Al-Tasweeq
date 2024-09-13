import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/features/chat/presentation/views/chat_view.dart';
import 'package:shopping_chart/features/contact_us/presentation/views/contact_us_view.dart';
import 'package:shopping_chart/features/profile/presentation/views/change_password_view.dart';
import 'package:shopping_chart/features/profile/presentation/views/edit_profile_view.dart';
import 'package:shopping_chart/features/profile/presentation/views/profile_view.dart';
import 'package:shopping_chart/features/subscribe_package/presentation/views/Subscribed_view.dart';
import 'package:shopping_chart/features/subscribe_package/presentation/views/my_cards_view.dart';
import 'package:shopping_chart/features/subscribe_package/presentation/views/payment_gateway_view.dart';
import 'package:shopping_chart/features/subscribe_package/presentation/views/subscribe_to_the_package_view.dart';
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
      path: '/profileView',
      builder: (context, state) => const ProfileView(),
    ),
    GoRoute(
      path: '/profileChangePasswordView',
      builder: (context, state) => const ProfileChangePasswordView(),
    ),
    GoRoute(
      path: '/editProfileView',
      builder: (context, state) => const EditProfileView(),
    ),
    GoRoute(
      path: '/subscribeToThePackageView',
      builder: (context, state) => const SubscribeToThePackageView(),
    ),
    GoRoute(
      path: '/paymentGatewayView',
      builder: (context, state) => const PaymentGatewayView(),
    ),
    GoRoute(
      path: '/myCardsView',
      builder: (context, state) => const MyCardsView(),
    ),
    GoRoute(
      path: '/subscribedView',
      builder: (context, state) => const SuccessSubscribedView(),
    ),
    GoRoute(
      path: '/chatView',
      builder: (context, state) => const ChatView(),
    ),
      GoRoute(
      path: '/contactUsView',
      builder: (context, state) => const ContactUsView(),
    ),
  ],
);
