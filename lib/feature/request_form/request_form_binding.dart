import 'package:blood_donation_mobile_app/feature/request_form/request_form_controller.dart';
import 'package:get/get.dart';

class RequestFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RequestFormController>(() => RequestFormController());
  }
}
