import 'package:get/get.dart';

import 'impact_controller.dart';

class ImpactBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImpactController>(() => ImpactController());
  }
}
