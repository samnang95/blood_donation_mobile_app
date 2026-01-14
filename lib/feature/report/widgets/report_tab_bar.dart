import 'package:blood_donation_mobile_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/widgets/x_card/x_card_donation_request.dart';
import '../report_controller.dart';

class ReportTabBar extends GetView<ReportController> {
  const ReportTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // TAB BAR
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: Container(
            width: double.infinity,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                // REQUEST DONATION TAB
                Expanded(
                  child: Obx(
                    () => Material(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(8),
                        splashColor: AppColors.backgroundColor.withOpacity(0.3),
                        highlightColor: AppColors.backgroundColor.withOpacity(
                          0.1,
                        ),
                        onTap: () {
                          controller.currentPage.value = 0;
                          controller.pageController.animateToPage(
                            0,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: controller.currentPage.value == 0
                                  ? AppColors.backgroundColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                "Request Donation",
                                style: TextStyle(
                                  color: controller.currentPage.value == 0
                                      ? AppColors.bgscafold
                                      : AppColors.grey600,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // DONATION REQUEST TAB
                Expanded(
                  child: Obx(
                    () => Material(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(8),
                        splashColor: AppColors.backgroundColor.withOpacity(0.3),
                        highlightColor: AppColors.backgroundColor.withOpacity(
                          0.1,
                        ),
                        onTap: () {
                          controller.currentPage.value = 1;
                          controller.pageController.animateToPage(
                            1,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: controller.currentPage.value == 1
                                  ? AppColors.backgroundColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                "Donation Request",
                                style: TextStyle(
                                  color: controller.currentPage.value == 1
                                      ? AppColors.bgscafold
                                      : AppColors.grey600,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        // DIVIDER
        Obx(
          () => controller.showDivider.value
              ? Divider(height: 1, color: Colors.grey[200], thickness: 1)
              : SizedBox.shrink(),
        ),

        // PAGE VIEW
        Expanded(
          child: PageView(
            controller: controller.pageController,
            physics: NeverScrollableScrollPhysics(),
            onPageChanged: (index) {
              controller.currentPage.value = index;
              controller.showDivider.value =
                  (index == 0
                      ? controller.scrollController1.offset
                      : controller.scrollController2.offset) >
                  0;
            },
            children: [
              _requestDonationPage(controller.selectedItems),
              _donationRequestPage(controller.selectedItems),
            ],
          ),
        ),
      ],
    );
  }

  // REQUEST DONATION PAGE
  Widget _requestDonationPage(RxSet<int> selectedItems) {
    return Obx(
      () => ListView.builder(
        controller: controller.scrollController1,
        shrinkWrap: true,
        itemCount: controller.requestDonation.length,
        itemBuilder: (context, index) {
          final request = controller.requestDonation[index];
          final isSelected = selectedItems.contains(index);

          return GestureDetector(
            onTap: () {
              if (isSelected) {
                selectedItems.remove(index);
              } else {
                selectedItems.add(index);
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: XCardDonationRequest(
                name: request.name,
                location: request.location,
                timeAgo: request.timeAgo,
                status: request.status,
                bloodType: request.bloodType,
                onAccept: () => Get.toNamed('/detail'),
                onReject: () => Get.toNamed('/detail'),
              ),
            ),
          );
        },
      ),
    );
  }

  // DONATION REQUEST PAGE
  Widget _donationRequestPage(RxSet<int> selectedItems) {
    return Obx(
      () => ListView.builder(
        controller: controller.scrollController2,
        shrinkWrap: true,
        itemCount: controller.donationRequests.length,
        itemBuilder: (context, index) {
          final request = controller.donationRequests[index];
          final isSelected = selectedItems.contains(index);

          return GestureDetector(
            onTap: () {
              if (isSelected) {
                selectedItems.remove(index);
              } else {
                selectedItems.add(index);
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: XCardDonationRequest(
                name: request.name,
                location: request.location,
                timeAgo: request.timeAgo,
                status: request.status,
                bloodType: request.bloodType,
                onAccept: () => Get.toNamed('/detail'),
                onReject: () => Get.toNamed('/detail'),
              ),
            ),
          );
        },
      ),
    );
  }
}
