import 'package:blood_donation_mobile_app/core/constants/app_images.dart';
import 'package:blood_donation_mobile_app/core/widgets/x_scaffold.dart';
import 'package:blood_donation_mobile_app/feature/auth/otp/widgets/otp_verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_icons.dart';
import '../../../core/widgets/x_button/x_button.dart';
import 'otp_controller.dart';

class OtpPage extends GetView<OtpController> {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return XScaffold(
      title: "OTP Verification",
      onNotificationTap: () {
        print(" OTP Notification");
      },
      onBackTap: () {
        Get.back();
      },
      backIcone: SvgPicture.asset(
        AppIcons.icArrowLeft,
        colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(color: Colors.transparent),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(AppImages.otp, fit: BoxFit.cover),
              Container(
                width: double.infinity,
                height: 250,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 250,
                          height: 70,
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "We will send you one time OTP this number",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                              Text(
                                "+855 012 123 456",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    OtpVerification(),
                    XButton(
                      text: "Verify",
                      backgroundColor: AppColors.blue300,
                      onPressed: () {
                        controller.verifyOtp();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
