import 'package:blood_donation_mobile_app/core/constants/app_icons.dart';
import 'package:blood_donation_mobile_app/feature/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: SvgPicture.asset(AppIcons.icLogo, width: 200, height: 200),
      ),
    );
  }
}
