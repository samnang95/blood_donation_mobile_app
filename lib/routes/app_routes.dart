import 'package:blood_donation_mobile_app/feature/auth/login/login_binding.dart';
import 'package:blood_donation_mobile_app/feature/auth/otp/otp_binding.dart';
import 'package:blood_donation_mobile_app/feature/auth/sign_up/signup_binding.dart';
import 'package:blood_donation_mobile_app/feature/auth/sign_up/signup_page.dart';
import 'package:blood_donation_mobile_app/feature/connect_give/connect_page.dart';
import 'package:blood_donation_mobile_app/feature/detail/detail_page.dart';
import 'package:blood_donation_mobile_app/feature/edit_profile/edit_profile_page.dart';
import 'package:blood_donation_mobile_app/feature/empower_generosity/empower_binding.dart';
import 'package:blood_donation_mobile_app/feature/impact/impact_binding.dart';
import 'package:blood_donation_mobile_app/feature/impact/impact_page.dart';
import 'package:blood_donation_mobile_app/feature/language/language_binding.dart';
import 'package:blood_donation_mobile_app/feature/language/language_page.dart';
import 'package:blood_donation_mobile_app/feature/main/main_page.dart';
import 'package:blood_donation_mobile_app/feature/profile/profile_binding.dart';
import 'package:blood_donation_mobile_app/feature/request_form/request_form_page.dart';
import 'package:blood_donation_mobile_app/feature/search/search_binding.dart';
import 'package:blood_donation_mobile_app/feature/search/search_home.dart';
import 'package:blood_donation_mobile_app/feature/setting/setting_page.dart';
import 'package:blood_donation_mobile_app/feature/splash/splash_binding.dart';
import 'package:blood_donation_mobile_app/feature/splash/splash_page.dart';
import 'package:get/get.dart';

import '../feature/auth/login/login_page.dart';
import '../feature/auth/otp/otp_page.dart';
import '../feature/connect_give/connect_binding.dart';
import '../feature/detail/detail_binding.dart';
import '../feature/donation_request/donation_request_binding.dart';
import '../feature/donation_request/donation_request_page.dart';
import '../feature/edit_profile/edit_profile_binding.dart';
import '../feature/empower_generosity/empower_page.dart';
import '../feature/home/home_binding.dart';
import '../feature/home/home_page.dart';
import '../feature/main/main_binding.dart';
import '../feature/noification/notification_binding.dart';
import '../feature/noification/notification_page.dart';
import '../feature/profile/profile_page.dart';
import '../feature/report/report_binding.dart';
import '../feature/report/report_page.dart';
import '../feature/request_donation/request_donation_binding.dart';
import '../feature/request_donation/request_donation_page.dart';
import '../feature/request_form/request_form_binding.dart';
import '../feature/setting/setting_binding.dart';

class AppRoutes {
  static const String main = '/main';
  static const String home = '/home';
  static const String search = '/search';
  static const String requestDonation = '/request-donation';
  static const String donationRequest = '/donation-request';
  static const String detail = '/detail';
  static const String profile = '/profile';
  static const String report = '/report';
  static const String notification = '/notification';
  static const String editProfile = '/edit-profile';
  static const String setting = '/setting';
  static const String requestForm = '/request-form';

  // Splash Screen
  static const String splash = '/splash';

  static const String empowerGenerosity = '/empower-generosity';

  static const String language = '/language';
  static const String connect = '/connect';
  static const String impact = '/impact';

  // auth
  static const String login = '/login';
  static const String signup = '/signup';
  static const String otp = '/otp';
  static final routes = [
    GetPage(name: main, page: () => const MainPage(), binding: MainBinding()),
    GetPage(name: home, page: () => HomePage(), binding: HomeBinding()),
    GetPage(name: search, page: () => SearchHome(), binding: SearchBinding()),
    GetPage(
      name: requestDonation,
      page: () => RequestDonationPage(),
      binding: RequestDonationBinding(),
    ),
    GetPage(
      name: donationRequest,
      page: () => DonationRequestPage(),
      binding: DonationRequestBinding(),
    ),
    GetPage(name: detail, page: () => DetailPage(), binding: DetailBinding()),
    GetPage(
      name: profile,
      page: () => ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(name: report, page: () => ReportPage(), binding: ReportBinding()),
    GetPage(
      name: notification,
      page: () => NotificationPage(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: editProfile,
      page: () => EditProfilePage(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: setting,
      page: () => SettingPage(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: requestForm,
      page: () => RequestFormPage(),
      binding: RequestFormBinding(),
    ),
    GetPage(name: splash, page: () => SplashPage(), binding: SplashBinding()),
    GetPage(
      name: empowerGenerosity,
      page: () => EmpowerPage(),
      binding: EmpowerBinding(),
    ),
    GetPage(
      name: language,
      page: () => LanguagePage(),
      binding: LanguageBinding(),
    ),
    GetPage(
      name: connect,
      page: () => ConnectPage(),
      binding: ConnectBinding(),
    ),
    GetPage(name: impact, page: () => ImpactPage(), binding: ImpactBinding()),
    GetPage(name: login, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(name: signup, page: () => SignupPage(), binding: SignUpBinding()),
    GetPage(name: otp, page: () => OtpPage(), binding: OtpBinding()),
  ];
}
