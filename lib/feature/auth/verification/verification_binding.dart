import 'package:blood_donation_mobile_app/feature/auth/verification/verification_controller.dart';
import 'package:get/get.dart';

class VerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerificationController>(() => VerificationController());
  }
}
