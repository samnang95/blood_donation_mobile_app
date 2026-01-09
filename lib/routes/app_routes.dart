import 'package:blood_donation_mobile_app/feature/detail/detail_page.dart';
import 'package:blood_donation_mobile_app/feature/edit_profile/edit_profile_page.dart';
import 'package:blood_donation_mobile_app/feature/main/main_page.dart';
import 'package:blood_donation_mobile_app/feature/profile/profile_binding.dart';
import 'package:blood_donation_mobile_app/feature/search/search_binding.dart';
import 'package:blood_donation_mobile_app/feature/search/search_home.dart';
import 'package:get/get.dart';

import '../feature/detail/detail_binding.dart';
import '../feature/donation_request/donation_request_binding.dart';
import '../feature/donation_request/donation_request_page.dart';
import '../feature/edit_profile/edit_profile_binding.dart';
import '../feature/home/home_binding.dart';
import '../feature/home/home_page.dart';
import '../feature/noification/notification_binding.dart';
import '../feature/noification/notification_page.dart';
import '../feature/profile/profile_page.dart';
import '../feature/report/report_binding.dart';
import '../feature/report/report_page.dart';
import '../feature/request_donation/request_donation_binding.dart';
import '../feature/request_donation/request_donation_page.dart';

class AppRoutes {
  static const String main = '/main';
  static const String home = '/home';
  static const String search = '/search';
  static const String requestDonation = '/request-donation';
  static const String donationRequest = '/donation-request';
  static const String detail = '/detail';
  static const String prfile = '/profile';
  static const String report = '/report';
  static const String notification = '/notification';
  static const String editProfile = '/edit-profile';
  static final routes = [
    GetPage(name: main, page: () => const MainPage()),
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
    GetPage(name: prfile, page: () => ProfilePage(), binding: ProfileBinding()),
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
  ];
}
