import 'package:blood_donation_mobile_app/feature/auth/sign_up/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_images.dart';
import '../../../core/widgets/x_button/x_button.dart';
import '../../../core/widgets/x_button/x_button_hint_text.dart';
import '../login/widgets/login_tab_bar.dart';

class SignupPage extends GetView<SignUpController> {
  const SignupPage({super.key});

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
                Image.asset(AppImages.forRegister, width: 50, height: 50),
                const SizedBox(height: 8),
                const Text(
                  "Hello! Register to get starded",
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
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: SingleChildScrollView(
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                LoginTabBar(),
                const SizedBox(height: 16),

                XButtonHintText(
                  hintText: "First Name",
                  //   controller: controller.firstNameController,
                  //   validator: (value) {
                  //     if (value == null || value.isEmpty) {
                  //       return 'Please enter your first name';
                  //     }
                  //     return null;
                  //   },
                ),
                const SizedBox(height: 16),
                XButtonHintText(
                  hintText: "Last Name",
                  // controller: controller.lastNameController,
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return 'Please enter your last name';
                  //   }
                  //   return null;
                  // },
                ),
                const SizedBox(height: 16),
                XButtonHintText(
                  hintText: "Phone Number",
                  controller: controller.phoneController,
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
                  hintText: "Password",
                  controller: controller.passwordController,
                  obscureText: true,
                  suffixIcon: AppImages.hintPassword,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                XButtonHintText(
                  hintText: "Confirm Password",
                  controller: controller.confirmPasswordController,
                  obscureText: true,
                  suffixIcon: AppImages.hintPassword,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    }
                    if (value != controller.passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                XButton(
                  text: "Sign Up",
                  onPressed: () {
                    if (controller.formKey.currentState!.validate()) {
                      debugPrint("Sign Up successful");
                      // Proceed with signup logic
                    }
                  },
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed('/login');
                      },
                      child: Text(
                        " Login",
                        style: TextStyle(color: Colors.blue[400], fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
