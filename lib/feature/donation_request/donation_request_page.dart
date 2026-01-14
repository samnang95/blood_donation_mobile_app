import 'package:blood_donation_mobile_app/feature/donation_request/donation_request_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../core/constants/app_icons.dart';
import '../../core/widgets/x_card/x_card_donation_request.dart';
import '../../core/widgets/x_scaffold.dart';

class DonationRequestPage extends GetView<DonationRequestController> {
  const DonationRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return XScaffold(
      title: "Donation Requests",
      onBackTap: () {
        Get.back();
      },
      onNotificationTap: () {
        Get.toNamed('/notification');
      },
      backIcone: SvgPicture.asset(
        AppIcons.icArrowLeft,
        colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Obx(
          () => ListView.builder(
            itemCount: controller.donationRequests.length,
            itemBuilder: (context, index) {
              final request = controller.donationRequests[index];
              return Padding(
                padding: const EdgeInsets.only(top: 16),
                child: XCardDonationRequest(
                  name: request.name,
                  location: request.location,
                  timeAgo: request.timeAgo,
                  status: request.status,
                  bloodType: request.bloodType,
                  onAccept: () {
                    Get.toNamed('/detail');
                  },
                  onReject: () {
                    Get.toNamed('/detail');
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
