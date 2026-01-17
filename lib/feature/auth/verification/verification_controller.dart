import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationController extends GetxController {
  final otpControllers = List.generate(4, (_) => TextEditingController());

  String get otpCode => otpControllers.map((c) => c.text).join();

  void verifyOtp() {
    // Add your verification logic here
    print('Verifying OTP: $otpCode');
    // For example, navigate to next page or show success message
  }

  @override
  void onClose() {
    for (var controller in otpControllers) {
      controller.dispose();
    }
    super.onClose();
  }
}
