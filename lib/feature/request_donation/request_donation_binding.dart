import 'package:blood_donation_mobile_app/feature/request_donation/request_donation_controller.dart';
import 'package:get/get.dart';

class RequestDonationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RequestDonationController>(() => RequestDonationController());
  }
}
