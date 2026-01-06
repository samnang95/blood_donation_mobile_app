import 'package:blood_donation_mobile_app/feature/search/search_binding.dart';
import 'package:blood_donation_mobile_app/feature/search/search_home.dart';
import 'package:get/get.dart';

import '../feature/home/home_binding.dart';
import '../feature/home/home_page.dart';

class AppRoutes {
  static const String home = '/home';
  static const String search = '/search';
  static final routes = [
    GetPage(name: home, page: () => HomePage(), binding: HomeBinding()),
    GetPage(name: search, page: () => SearchHome(), binding: SearchBinding()),
  ];
}
