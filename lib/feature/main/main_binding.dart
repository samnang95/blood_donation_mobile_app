import 'package:get/get.dart';

import '../home/home_binding.dart';
import '../profile/profile_binding.dart';
import '../report/report_binding.dart';
import '../search/search_binding.dart';
import 'main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController());
    // Initialize all child page controllers
    HomeBinding().dependencies();
    SearchBinding().dependencies();
    ReportBinding().dependencies();
    ProfileBinding().dependencies();
  }
}
