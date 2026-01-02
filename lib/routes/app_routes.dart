import 'package:get/get.dart';

import '../feature/home/home_binding.dart';
import '../feature/home/home_page.dart';

class AppRoutes {
  static const String home = '/home';
  static final routes = [
    GetPage(name: home, page: () => HomePage(), binding: HomeBinding()),
  ];
}
