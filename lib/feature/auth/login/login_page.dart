import 'package:blood_donation_mobile_app/core/constants/app_images.dart';
import 'package:blood_donation_mobile_app/feature/auth/login/login_controller.dart';
import 'package:blood_donation_mobile_app/feature/auth/login/widgets/login_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/x_button/x_button.dart';
import '../../../core/widgets/x_button/x_button_hint_text.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final safeTop = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: AppColors.bgscafold,

      body: SafeArea(
        child: Center(
          child: Container(
            width: 200,
            constraints: const BoxConstraints(maxHeight: 120),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(AppImages.forLogin, width: 50, height: 50),
                const SizedBox(height: 8),
                const Text(
                  "Welcome! Login to get started",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        height: 600,
        constraints: BoxConstraints(maxHeight: (screenHeight - safeTop) * 0.8),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),

        child: SingleChildScrollView(
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                const LoginTabBar(),
                const SizedBox(height: 16),

                XButtonHintText(
                  hintText: 'Phone Number',
                  prefixIcon: AppImages.callLogin,
                  controller: controller.emailController,
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    if (!RegExp(r'^\+?[0-9]{10,15}$').hasMatch(value)) {
                      return 'Please enter a valid phone number';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                XButtonHintText(
                  hintText: 'Password',
                  prefixIcon: AppImages.lockLogin,
                  controller: controller.passwordController,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () => controller.rememberMe.value =
                                !controller.rememberMe.value,
                            child: Obx(
                              () => Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: controller.rememberMe.value
                                      ? AppColors.blue300
                                      : Colors.transparent,
                                  border: Border.all(
                                    width: 1,
                                    color: controller.rememberMe.value
                                        ? AppColors.blue300
                                        : Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: controller.rememberMe.value
                                    ? const Icon(
                                        Icons.check,
                                        size: 16,
                                        color: Colors.white,
                                      )
                                    : null,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "Remember Me",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.blue300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                XButton(
                  text: 'Login',
                  onPressed: () {
                    if (controller.formKey.currentState!.validate()) {
                      Get.toNamed('/main');
                      // Proceed with login logic
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
