import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/widgets/x_card/x_card_donation_request.dart';
import '../report_controller.dart';

class ReportTap extends GetView<ReportController> {
  const ReportTap({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          /// Tabs
          TabBar(
            dividerHeight: 0,
            // indicatorColor: Theme.of(context).colorScheme.primary,
            indicatorColor: Colors.transparent,
            labelColor: Theme.of(context).colorScheme.primary,
            unselectedLabelColor: Colors.black54,
            tabs: const [
              Tab(text: "requestsDonation"),
              Tab(text: "donationRequests"),
            ],
          ),

          // const SizedBox(height: 16),

          /// Tab Views
          Expanded(
            child: TabBarView(
              children: [_requestDonationPage(), _donationRequestPage()],
            ),
          ),
        ],
      ),
    );
  }

  Widget _donationRequestPage() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Obx(
        () => ListView.builder(
          itemCount: controller.donationRequests.length,
          itemBuilder: (context, index) {
            final request = controller.donationRequests[index];
            return GestureDetector(
              child: Padding(
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
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _requestDonationPage() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Obx(
        () => ListView.builder(
          itemCount: controller.requestDonation.length,
          itemBuilder: (context, index) {
            final request = controller.requestDonation[index];
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
    );
  }
}
