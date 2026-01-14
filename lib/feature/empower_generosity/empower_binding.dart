import 'package:get/get.dart';

import 'empower_controller.dart';

class EmpowerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmpowerController>(() => EmpowerController());
  }
}
