import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool rememberMe = false.obs;
  RxInt selectedIndex = 0.obs; // Added for tab switching
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController firstNameController =
      TextEditingController(); // Added for signup
  final TextEditingController lastNameController =
      TextEditingController(); // Added for signup
  final TextEditingController phoneController =
      TextEditingController(); // Added for signup
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
}
