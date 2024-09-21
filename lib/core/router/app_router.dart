import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/features/facebook/presentation/views/add_facebook_groups_view.dart';
import 'package:shopping_chart/features/facebook/presentation/views/choose_group_to_send_facbook_ad_view.dart';
import 'package:shopping_chart/features/facebook/presentation/views/choose_person_to_send_facebook_ad_view.dart';
import 'package:shopping_chart/features/facebook/presentation/views/facbook_delete_groups_choose_destination_view.dart';
import 'package:shopping_chart/features/facebook/presentation/views/facebook_choose_destination_view.dart';
import 'package:shopping_chart/features/facebook/presentation/views/facebook_choose_groups_view2.dart';
import 'package:shopping_chart/features/facebook/presentation/views/facebook_delete_groups_sending_view.dart';
import 'package:shopping_chart/features/facebook/presentation/views/facebook_groups_choose_destination_view.dart';
import 'package:shopping_chart/features/facebook/presentation/views/facebook_groups_sending_view.dart';
import 'package:shopping_chart/features/facebook/presentation/views/facebook_sending_view.dart';
import 'package:shopping_chart/features/facebook/presentation/views/facebook_view.dart';
import 'package:shopping_chart/features/facebook/presentation/views/launch_your_facebook_Ad_view.dart';
import 'package:shopping_chart/features/x/presentation/views/add_trends_view.dart';
import 'package:shopping_chart/features/x/presentation/views/choose_person_and_send_x_ad_view.dart';
import 'package:shopping_chart/features/x/presentation/views/choose_x_ad_destination_view.dart';
import 'package:shopping_chart/features/x/presentation/views/launch_your_x_ad_view.dart';
import 'package:shopping_chart/features/x/presentation/views/search_person_to_send_x_ad_view.dart';
import 'package:shopping_chart/features/x/presentation/views/send_your_x_ad_to_followrs_view.dart';
import 'package:shopping_chart/features/x/presentation/views/sending_X_ad_to_followrs_view.dart';
import 'package:shopping_chart/features/x/presentation/views/sending_x_ad_view.dart';
import 'package:shopping_chart/features/x/presentation/views/x_view.dart';
import '../../features/facebook/presentation/views/facebook_choose_groups_view1.dart';
import '../../features/facebook/presentation/views/search_person_to_send_facebook_ad_view.dart';
import '../../features/instagram/presentation/views/add_hashtags_view.dart';
import '../../features/instagram/presentation/views/choose_person_and_send_ad_view.dart';
import '../../features/instagram/presentation/views/instagram_choose_destination_view.dart';
import '../../features/instagram/presentation/views/instagram_sending_view.dart';
import '../../features/instagram/presentation/views/launch_your_insta_ad_view.dart';
import '../../features/instagram/presentation/views/search_person_to_send_ad_view.dart';
import '../../features/instagram/presentation/views/send_your_ad_to_followers_view.dart';
import '../../features/instagram/presentation/views/user_details_view.dart';
import '../../features/instagram/presentation/views/instagram_view.dart';
import '../../features/telegram/presentation/views/convert_number_to_telegram_link_view.dart';
import '../../features/telegram/presentation/views/launch_ad_telegram_groups_view.dart';
import '../../features/telegram/presentation/views/launch_your_telegram_ad_view.dart';
import '../../features/telegram/presentation/views/telegram_chats_View.dart';
import '../../features/telegram/presentation/views/telegram_choose_destination_view.dart';
import '../../features/telegram/presentation/views/telegram_groups_details_view.dart';
import '../../features/telegram/presentation/views/telegram_groups_view.dart';
import '../../features/telegram/presentation/views/telegram_view.dart';
import '../../features/whatsapp/presentation/views/convert_number_to_whatsapp_link_view.dart';
import '../../features/whatsapp/presentation/views/delete_choose_the_destination_view.dart';
import '../../features/whatsapp/presentation/views/delete_sending_view.dart';
import '../../features/whatsapp/presentation/views/groups_details_view.dart';
import '../../features/whatsapp/presentation/views/launch_ad_add_whatsapp_groups_view.dart';
import '../../features/whatsapp/presentation/views/launch_ad_chats_view.dart';
import '../../features/whatsapp/presentation/views/launch_ad_choose_group__to_send_view_2.dart';
import '../../features/whatsapp/presentation/views/launch_ad_choose_group_view.dart';
import '../../features/whatsapp/presentation/views/launch_ad_choose_group__to_send_view_1.dart';
import '../../features/whatsapp/presentation/views/launch_chats_messages_view.dart';
import '../../features/whatsapp/presentation/views/phone_choose_the_destination_view.dart';
import '../../features/whatsapp/presentation/views/phone_sending_view.dart';
import '../../features/whatsapp/presentation/views/sending_choosen_group_view.dart';
import '../../features/whatsapp/presentation/views/whatsapp_choose_the_destination_view.dart';
import '../../features/whatsapp/presentation/views/launch_your_whatsapp_ad_view.dart';
import '../../features/whatsapp/presentation/views/scan_qr_code_view.dart';
import '../../features/whatsapp/presentation/views/scan_qr_container_view.dart';
import '../../features/whatsapp/presentation/views/whastapp_sending_view.dart';
import '../../features/whatsapp/presentation/views/whatsapp_add_suggestion_view.dart';
import '../../features/whatsapp/presentation/views/whatsapp_groups_view.dart';
import '../../features/whatsapp/presentation/views/whatsapp_view.dart';
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
      builder: (context, state) => const LaunchYourWhatsappAdView(),
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
    GoRoute(
      path: '/launchChatsMessagesView',
      builder: (context, state) => const LaunchChatsMessagesView(),
    ),
    GoRoute(
      path: '/convertNumberToWhatsappLinkView',
      builder: (context, state) => const ConvertNumberToWhatsappLinkView(),
    ),
    GoRoute(
      path: '/launchAdAddWhatsappGroupsView',
      builder: (context, state) => const LaunchAdAddWhatsappGroupsView(),
    ),
    GoRoute(
      path: '/launchAdChooseGroupView',
      builder: (context, state) => const LaunchAdChooseGroupView(),
    ),
    GoRoute(
      path: '/launchAdChooseGroupToSendView1',
      builder: (context, state) => const LaunchAdChooseGroupToSendView1(),
    ),
    GoRoute(
      path: '/launchAdChooseGroupToSendView2',
      builder: (context, state) => const LaunchAdChooseGroupToSendView2(),
    ),
    GoRoute(
      path: '/sendingChoosenGroupView',
      builder: (context, state) => const SendingChoosenGroupView(),
    ),
    GoRoute(
      path: '/whatsappGroupsView',
      builder: (context, state) => const WhatsappGroupsView(),
    ),
    GoRoute(
      path: '/whatsappGroupsDetailsView',
      builder: (context, state) => const WhatsappGroupsDetailsView(),
    ),
    GoRoute(
      path: '/telegramView',
      builder: (context, state) => const TelegramView(),
    ),
    GoRoute(
      path: '/launchYourTelegramAdView',
      builder: (context, state) => const LaunchYourTelegramAdView(),
    ),
    GoRoute(
      path: '/telegramChooseDestinationView',
      builder: (context, state) => const TelegramChooseDestinationView(),
    ),
    GoRoute(
      path: '/telegramChatsView',
      builder: (context, state) => const TelegramChatsView(),
    ),
    GoRoute(
      path: '/convertNumberToTelegramLinkView',
      builder: (context, state) => const ConvertNumberToTelegramLinkView(),
    ),
    GoRoute(
      path: '/launchAdTelegramGroupsView',
      builder: (context, state) => const LaunchAdTelegramGroupsView(),
    ),
    GoRoute(
      path: '/telegramGroupsView',
      builder: (context, state) => const TelegramGroupsView(),
    ),
    GoRoute(
      path: '/telegramGroupsDetailsView',
      builder: (context, state) => const TelegramGroupsDetailsView(),
    ),
    GoRoute(
      path: '/instagramView',
      builder: (context, state) => const InstagramView(),
    ),
    GoRoute(
      path: '/launchYourInstaAdView',
      builder: (context, state) => const LaunchYourInstaAdView(),
    ),
    GoRoute(
      path: '/addHashtagsView',
      builder: (context, state) => const AddHashtagsView(),
    ),
    GoRoute(
      path: '/sendYourAdToFollowersView',
      builder: (context, state) => const SendYourAdToFollowersView(),
    ),
    GoRoute(
      path: '/instagramChooseDestinationView',
      builder: (context, state) => const InstagramChooseDestinationView(),
    ),
    GoRoute(
      path: '/instagramSendingView',
      builder: (context, state) => const InstagramSendingView(),
    ),
    GoRoute(
      path: '/choosePersonAndSendAdView',
      builder: (context, state) => const ChoosePersonAndSendAdView(),
    ),
    GoRoute(
      path: '/searchPersonToSendAdView',
      builder: (context, state) => const SearchPersonToSendAdView(),
    ),
    GoRoute(
      path: '/userDetailsView',
      builder: (context, state) => const UserDetailsView(),
    ),
    GoRoute(
      path: '/xView',
      builder: (context, state) => const XView(),
    ),
    GoRoute(
      path: '/launchYourXAdView',
      builder: (context, state) => const LaunchYourXAdView(),
    ),
    GoRoute(
      path: '/addTrendsView',
      builder: (context, state) => const AddTrendsView(),
    ),
    GoRoute(
      path: '/sendingXAdView',
      builder: (context, state) => const SendingXAdView(),
    ),
    GoRoute(
      path: '/sendYourXAdToFollowrsView',
      builder: (context, state) => const SendYourXAdToFollowrsView(),
    ),
    GoRoute(
      path: '/chooseXAdDestinationView',
      builder: (context, state) => const ChooseXAdDestinationView(),
    ),
    GoRoute(
      path: '/sendingXAdToFollowrsView',
      builder: (context, state) => const SendingXAdToFollowrsView(),
    ),
    GoRoute(
      path: '/choosePersonAndSendXAdView',
      builder: (context, state) => const ChoosePersonAndSendXAdView(),
    ),
    GoRoute(
      path: '/searchPersonToSendXAdView',
      builder: (context, state) => const SearchPersonToSendXAdView(),
    ),
    GoRoute(
      path: '/facebookView',
      builder: (context, state) => const FacebookView(),
    ),
    GoRoute(
      path: '/launchYourFacebookAdView',
      builder: (context, state) => const LaunchYourFacebookAdView(),
    ),
    GoRoute(
      path: '/facebookChooseDestinationView',
      builder: (context, state) => const FacebookChooseDestinationView(),
    ),
    GoRoute(
      path: '/facebookSendingView',
      builder: (context, state) => const FacebookSendingView(),
    ),
    GoRoute(
      path: '/facebookGroupsChooseDestinationView',
      builder: (context, state) => const FacebookGroupsChooseDestinationView(),
    ),
    GoRoute(
      path: '/facebookGroupsSendingView',
      builder: (context, state) => const FacebookGroupsSendingView(),
    ),
    GoRoute(
      path: '/facbookDeleteGroupsChooseDestinationView',
      builder: (context, state) =>
          const FacbookDeleteGroupsChooseDestinationView(),
    ),
    GoRoute(
      path: '/facebookDeleteGroupsSendingView',
      builder: (context, state) => const FacebookDeleteGroupsSendingView(),
    ),
    GoRoute(
      path: '/addFacebookGroupsView',
      builder: (context, state) => const AddFacebookGroupsView(),
    ),
    GoRoute(
      path: '/choosePersonToSendFacebookAdView',
      builder: (context, state) => const ChoosePersonToSendFacebookAdView(),
    ),
    GoRoute(
      path: '/searchPersonToSendFacebookAdView',
      builder: (context, state) => const SearchPersonToSendFacebookAdView(),
    ),
    GoRoute(
      path: '/chooseGroupToSendFacbookAdView',
      builder: (context, state) => const ChooseGroupToSendFacbookAdView(),
    ),
    GoRoute(
      path: '/facebookChooseGroupsView',
      builder: (context, state) => const FacebookChooseGroupsView1(),
    ),
    GoRoute(
      path: '/facebookChooseGroupsView2',
      builder: (context, state) => const FacebookChooseGroupsView2(),
    ),
  ],
);
