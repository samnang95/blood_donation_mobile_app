import 'package:blood_donation_mobile_app/core/widgets/x_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../core/constants/app_icons.dart';
import '../../core/widgets/x_card/x_card_donation_request.dart';
import 'request_donation_controller.dart';

class RequestDonationPage extends GetView<RequestDonationController> {
  const RequestDonationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return XScaffold(
      title: 'Request Donation',

      /// Back icon
      backIcone: SvgPicture.asset(AppIcons.icArrowLeft, color: Colors.white),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(
          () => ListView.builder(
            itemCount: controller.donationRequests.length,
            itemBuilder: (context, index) {
              final request = controller.donationRequests[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: XCardDonationRequest(
                  name: request.name,
                  location: request.location,
                  timeAgo: request.timeAgo,
                  status: request.status,
                  bloodType: request.bloodType,
                  onAccept: () {},
                  onReject: () {},
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
