import 'package:blood_donation_mobile_app/feature/connect_give/widgets/connect_section_bottom.dart';
import 'package:blood_donation_mobile_app/feature/connect_give/widgets/connect_section_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_icons.dart';
import 'connect_controller.dart';

class ConnectPage extends GetView<ConnectController> {
  const ConnectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ConnectSectionTop(
                onTap: () {
                  Get.toNamed('/impact');
                },
              ),
              SvgPicture.asset(AppIcons.icBigBlood),
              Column(children: [ConnectSectionBottom(), SizedBox(height: 30)]),
            ],
          ),
        ),
      ),
    );
  }
}
