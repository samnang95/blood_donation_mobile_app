import 'package:blood_donation_mobile_app/feature/donation_request/donation_request_controller.dart';
import 'package:get/get.dart';

class DonationRequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DonationRequestController>(() => DonationRequestController());
  }
}
