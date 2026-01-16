import 'package:blood_donation_mobile_app/core/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpController extends GetxController {
  final otpControllers = List.generate(4, (_) => TextEditingController());

  String get otpCode => otpControllers.map((c) => c.text).join();

  void verifyOtp() {
    // Add your verification logic here
    print('Verifying OTP: $otpCode');
    // Show success dialog
    Get.dialog(
      Container(
        color: Colors.transparent,
        width: Get.width * 0.8,
        height: 300,
        child: AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: Colors.white,
          title: Column(
            children: [
              SizedBox(height: 8),
              Image.asset(
                AppImages.otpSuccess,
                // height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text(
                'Successfully!',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black87, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
    Future.delayed(Duration(seconds: 2), () {
      Get.back();
      Get.offAllNamed('/main'); // Navigate to main route
    });
  }

  @override
  void onClose() {
    for (var controller in otpControllers) {
      controller.dispose();
    }
    super.onClose();
  }
}
