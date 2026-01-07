import 'package:blood_donation_mobile_app/core/constants/app_colors.dart';
import 'package:blood_donation_mobile_app/core/constants/app_images.dart';
import 'package:blood_donation_mobile_app/core/widgets/x_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../core/constants/app_icons.dart';
import '../../core/widgets/x_button/x_button.dart';
import 'detail_controller.dart';

class DetailPage extends GetView<DetailController> {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return XScaffold(
      title: "Lorn Polin Detail",
      backIcone: SvgPicture.asset(AppIcons.icArrowLeft, color: Colors.white),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          top: 24.0,
          bottom: 32.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _detailMenu(
                  "LORE POLIN",
                  Image.asset(AppImages.person, width: 24, height: 24),
                ),
                _detailMenu(
                  "Phnom Penh Hospital",
                  Image.asset(AppImages.location, width: 24, height: 24),
                ),
                _detailMenu(
                  "B+",
                  Image.asset(AppImages.blood, width: 24, height: 24),
                ),
                _detailMenu(
                  "012 123 123",
                  Image.asset(AppImages.call, width: 24, height: 24),
                ),
                _detailMenu(
                  "Add note",
                  Image.asset(AppImages.note, width: 24, height: 24),
                  textStyle: TextStyle(color: AppColors.grey400),
                ),
              ],
            ),
            Column(
              children: [
                XButton(text: "Accept", onPressed: () {}),
                SizedBox(height: 20),
                XButton(
                  backgroundColor: AppColors.bgButton,
                  text: "Cancel ",
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _detailMenu(String title, icon, {TextStyle? textStyle}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            icon,
            SizedBox(width: 12),
            Text(
              title,
              style:
                  textStyle ??
                  TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.darkColor,
                  ),
            ),
          ],
        ),
      ),
      Divider(color: AppColors.grey200, thickness: 1, height: 24),
    ],
  );
}
