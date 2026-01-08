import 'package:blood_donation_mobile_app/feature/home/home_controller.dart';
import 'package:blood_donation_mobile_app/feature/home/widgets/home_banner.dart';
import 'package:blood_donation_mobile_app/feature/home/widgets/home_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/widgets/x_button/x_button_back.dart';
import '../../core/widgets/x_card/x_card_donation_request.dart';
import '../../core/widgets/x_scaffold.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return XScaffold(
      title: 'Home',
      onNotificationTap: () {},
      onBackTap: () {},
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              XBanner(
                imagePaths: const [
                  'assets/images/banner.png',
                  'assets/images/banner2.png',
                  'assets/images/banner3.png',
                ],
              ),
              const SizedBox(height: 20),
              HomeMenu(
                onFindDonorsTap: () {
                  Get.toNamed('/search');
                },
                onRequestBloodTap: () {},
                onReportTap: () {},
              ),
              const SizedBox(height: 20),
              XButtonBack(
                text: "Requests Donation",
                size: 30, // Background size
                iconSize: 16, // Icon size
                onTap: () {
                  Get.toNamed('/request-donation');
                },
              ),
              const SizedBox(height: 20),
              Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.donationRequests.length,
                  itemBuilder: (context, index) {
                    final request = controller.donationRequests[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
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
              XButtonBack(
                text: "Donation Requests",
                size: 30, // Background size
                iconSize: 16, // Icon size
                onTap: () {
                  Get.toNamed('/donation-request');
                },
              ),
              const SizedBox(height: 20),
              Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.requestsDonation.length,
                  itemBuilder: (context, index) {
                    final request = controller.requestsDonation[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
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
            ],
          ),
        ),
      ),
    );
  }
}

// Widget _title({
//   required String text,
//   Color color = AppColors.grey600,
//   VoidCallback? onTap,
// }) {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       Text(
//         text,
//         style: TextStyle(
//           fontSize: 16,
//           color: color,
//           fontWeight: FontWeight.w600, // Semibold
//         ),
//       ),
//       XButtonArrow(),
//     ],
//   );
// }
