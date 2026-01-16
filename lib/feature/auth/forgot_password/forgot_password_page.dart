import 'package:blood_donation_mobile_app/core/constants/app_images.dart';
import 'package:blood_donation_mobile_app/core/widgets/x_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_icons.dart';
import '../../../core/widgets/x_button/x_button.dart';
import '../../../core/widgets/x_button/x_button_hint_text.dart';
import 'forgot_password_controller.dart';

class ForgotPasswordPage extends GetView<ForgotPasswordController> {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return XScaffold(
      title: "Forgot Password",
      onBackTap: () {
        Get.back();
      },
      backIcone: SvgPicture.asset(
        AppIcons.icArrowLeft,
        colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 72, left: 8, right: 16, bottom: 36),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(color: Colors.transparent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        AppImages.forgotLock,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text(
                      "Forgot\nPassword?",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Don’t worry ! It happens. Please enter the phone number we will send the OTP in this phone number.",
                      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                    ),
                    SizedBox(height: 2),
                    XButtonHintText(
                      hintText: "Phone number",
                      prefixIcon: AppImages.forgotCall,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: XButton(
                  text: "Continue",
                  onPressed: () {
                    print("Continue to OTP Verification");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
