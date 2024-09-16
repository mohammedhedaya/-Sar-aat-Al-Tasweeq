import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/features/whatsapp/presentation/views/delete_choose_the_destination_view.dart';
import 'package:shopping_chart/features/whatsapp/presentation/views/delete_sending_view.dart';
import 'package:shopping_chart/features/whatsapp/presentation/views/launch_ad_chats_view.dart';
import 'package:shopping_chart/features/whatsapp/presentation/views/phone_choose_the_destination_view.dart';
import 'package:shopping_chart/features/whatsapp/presentation/views/phone_sending_view.dart';
import 'package:shopping_chart/features/whatsapp/presentation/views/whatsapp_choose_the_destination_view.dart';
import 'package:shopping_chart/features/whatsapp/presentation/views/launch_your_ad_view.dart';
import 'package:shopping_chart/features/whatsapp/presentation/views/scan_qr_code_view.dart';
import 'package:shopping_chart/features/whatsapp/presentation/views/scan_qr_container_view.dart';
import 'package:shopping_chart/features/whatsapp/presentation/views/whastapp_sending_view.dart';
import 'package:shopping_chart/features/whatsapp/presentation/views/whatsapp_add_suggestion_view.dart';
import 'package:shopping_chart/features/whatsapp/presentation/views/whatsapp_view.dart';
import '../../features/add_group/presentation/views/add_group_view.dart';
import '../../features/add_group/presentation/views/add_telegram_group_view.dart';
import '../../features/add_group/presentation/views/add_whatsapp_group_view.dart';
import '../../features/add_suggestion/presentation/views/add_suggestion_view.dart';
import '../../features/diamond_wallet/presentation/views/diamond_wallet_view.dart';
import '../../features/diamond_wallet/presentation/views/diamonds_payment_gateways_view.dart';
import '../../features/diamond_wallet/presentation/views/purchase_completed_successfully.dart';
import '../../features/notifications/presentation/views/notification_details_view.dart';
import '../../features/notifications/presentation/views/notifications_view.dart';
import '../../features/our_accounts/presentation/views/our_accounts_view.dart';
import '../../features/profile/presentation/views/change_password_view.dart';
import '../../features/profile/presentation/views/edit_profile_view.dart';
import '../../features/profile/presentation/views/profile_view.dart';
import '../../features/subscribe_package/presentation/views/Subscribed_view.dart';
import '../../features/subscribe_package/presentation/views/my_cards_view.dart';
import '../../features/subscribe_package/presentation/views/payment_gateway_view.dart';
import '../../features/subscribe_package/presentation/views/subscribe_to_the_package_view.dart';
import '../../features/diamond_wallet/presentation/views/my_card_view_diamond_wallet.dart';
import '../../features/diamond_wallet/presentation/views/purchase_process_view.dart';
import '../../features/chat/presentation/views/chat_view.dart';
import '../../features/contact_us/presentation/views/contact_us_view.dart';
import '../../features/share_with_my_freinds/presentation/views/share_and_earn_view.dart';
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
        child: const LaunchAdChatsView(),
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
    GoRoute(
      path: '/diamondWallet',
      builder: (context, state) => const DiamondWalletView(),
    ),
    GoRoute(
      path: '/purchaseProcess',
      builder: (context, state) => const PurchaseProcess(),
    ),
    GoRoute(
      path: '/myCardViewDiamondWallet',
      builder: (context, state) => const MyCardViewDiamondWallet(),
    ),
    GoRoute(
      path: '/purchaseCompletedSuccessfully',
      builder: (context, state) => const PurchaseCompletedSuccessfully(),
    ),
    GoRoute(
      path: '/diamondsPaymentGatewayView',
      builder: (context, state) => const DiamondsPaymentGatewayView(),
    ),
    GoRoute(
      path: '/addGroupView',
      builder: (context, state) => const AddGroupView(),
    ),
    GoRoute(
      path: '/addWhatsappGroupView',
      builder: (context, state) => const AddWhatsappGroupView(),
    ),
    GoRoute(
      path: '/addTelegramGroupView',
      builder: (context, state) => const AddTelegramGroupView(),
    ),
    GoRoute(
      path: '/shareAndEarnView',
      builder: (context, state) => const ShareAndEarnView(),
    ),
    GoRoute(
      path: '/addSuggestionView',
      builder: (context, state) => const AddSuggestionView(),
    ),
    GoRoute(
      path: '/ourAccountsView',
      builder: (context, state) => const OurAccountsView(),
    ),
    GoRoute(
      path: '/notificationsView',
      builder: (context, state) => const NotificationsView(),
    ),
    GoRoute(
      path: '/notificationsDetailsView',
      builder: (context, state) => const NotificationsDetailsView(),
    ),
    GoRoute(
      path: '/whatsappView',
      builder: (context, state) => const WhatsappView(),
    ),
    GoRoute(
      path: '/scanQrCodeView',
      builder: (context, state) => const ScanQrCodeView(),
    ),
    GoRoute(
      path: '/qrViewInContainer',
      builder: (context, state) => const QRViewInContainer(),
    ),
    GoRoute(
      path: '/whatsappAddSuggestionView',
      builder: (context, state) => const WhatsappAddSuggestionView(),
    ),
    GoRoute(
      path: '/launchYourAdView',
      builder: (context, state) => const LaunchYourAdView(),
    ),
    GoRoute(
      path: '/whatsappChooseTheDestinationView',
      builder: (context, state) => const WhatsappChooseTheDestinationView(),
    ),
    GoRoute(
      path: '/whastappSendingView',
      builder: (context, state) => const WhatsappSendingView(),
    ),
    GoRoute(
      path: '/phoneChooseTheDestinationView',
      builder: (context, state) => const PhoneChooseTheDestinationView(),
    ),
    GoRoute(
      path: '/phoneSendingView',
      builder: (context, state) => const PhoneSendingView(),
    ),
    GoRoute(
      path: '/deleteChooseTheDestinationView',
      builder: (context, state) => const DeleteChooseTheDestinationView(),
    ),
    GoRoute(
      path: '/deleteSendingView',
      builder: (context, state) => const DeleteSendingView(),
    ),
    GoRoute(
      path: '/launchAdChatsView',
      builder: (context, state) => const LaunchAdChatsView(),
    ),
  ],
);
