import 'package:blood_donation_mobile_app/core/constants/app_images.dart';
import 'package:blood_donation_mobile_app/core/widgets/x_scaffold.dart';
import 'package:blood_donation_mobile_app/feature/setting/setting_controller.dart';
import 'package:blood_donation_mobile_app/feature/setting/widgets/setting_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../controller/theme_controller.dart';
import '../../core/constants/app_icons.dart';

class SettingPage extends GetView<SettingController> {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return XScaffold(
      title: 'Setting',
      backIcone: SvgPicture.asset(
        AppIcons.icArrowLeft,
        colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
      onNotificationTap: () {
        Get.toNamed('/notification');
      },
      onBackTap: () {
        Get.back();
      },
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SettingList(
              title: "Dark Mode",
              prefixIcon: Image.asset(AppImages.darkMode),
              suffixIcon: Image.asset(AppImages.toggle),
              onTap: () => Get.find<ThemeController>().toggleTheme(),
            ),
            SettingList(
              title: "Notifications",
              prefixIcon: Image.asset(AppImages.notication),
            ),
            SettingList(
              title: "Language",
              prefixIcon: Image.asset(AppImages.language),
            ),
            SettingList(
              title: "Security",
              prefixIcon: Image.asset(AppImages.security),
            ),
            SettingList(
              title: "Help",
              prefixIcon: Image.asset(AppImages.unKnown),
              showDivider: false,
            ),
          ],
        ),
      ),
    );
  }
}
