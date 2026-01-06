import 'package:blood_donation_mobile_app/feature/search/search_binding.dart';
import 'package:blood_donation_mobile_app/feature/search/search_home.dart';
import 'package:get/get.dart';

import '../feature/home/home_binding.dart';
import '../feature/home/home_page.dart';
import '../feature/request_donation/request_donation_binding.dart';
import '../feature/request_donation/request_donation_page.dart';

class AppRoutes {
  static const String home = '/home';
  static const String search = '/search';
  static const String requestDonation = '/request-donation';
  static final routes = [
    GetPage(name: home, page: () => HomePage(), binding: HomeBinding()),
    GetPage(name: search, page: () => SearchHome(), binding: SearchBinding()),
    GetPage(
      name: requestDonation,
      page: () => RequestDonationPage(),
      binding: RequestDonationBinding(),
    ),
  ];
}
