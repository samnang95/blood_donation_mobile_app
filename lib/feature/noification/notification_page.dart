import 'package:blood_donation_mobile_app/core/widgets/x_scaffold.dart';
import 'package:blood_donation_mobile_app/feature/noification/notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../core/constants/app_icons.dart';
import '../../core/widgets/x_card/x_card_notication.dart';

class NotificationPage extends GetView<NotificationController> {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return XScaffold(
      title: "Notifications",
      backIcone: SvgPicture.asset(
        AppIcons.icArrowLeft,
        colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
      onBackTap: () {
        Get.back();
      },
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(
          () => ListView(
            children: [
              for (var section in controller.sections) ...[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    section.date,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                for (var item in section.items)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 1,
                      vertical: 8,
                    ),
                    child: XCardNotication(
                      title: item.title,
                      message: item.message,
                      time: item.time,
                      onViewDetails: () {
                        print('View Details tapped for ${item.title}');
                      },
                      onShare: () {
                        print('Share tapped for ${item.title}');
                      },
                    ),
                  ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
