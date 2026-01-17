import 'package:blood_donation_mobile_app/core/constants/app_colors.dart';
import 'package:blood_donation_mobile_app/core/constants/app_images.dart';
import 'package:blood_donation_mobile_app/feature/auth/verification/verification_controller.dart';
import 'package:blood_donation_mobile_app/feature/auth/verification/widgets/otp_verify.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/widgets/x_button/x_button.dart';

class VerificationPage extends GetView<VerificationController> {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 72 * 3,
          left: 8,
          right: 16,
          bottom: 36,
        ),
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
                height: 300,
                decoration: BoxDecoration(color: Colors.transparent),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        AppImages.forgotLock,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "OTP VERIFICATION",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Enter the OTP sent to -",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                          ),
                          Text(
                            "+91 -8976500001",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2),
                      OtpVerify(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "00:120 Sec",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don’t receive code ?",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[600],
                                ),
                              ),
                              SizedBox(width: 5),
                              InkWell(
                                onTap: () {
                                  print("Re-send OTP");
                                },
                                child: Text(
                                  "Re-send",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: XButton(
                  text: "Submit",
                  onPressed: () {
                    controller.verifyOtp();
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
