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
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => InkWell(
                    onTap: () {
                      controller.currentPage.value = 0;
                      controller.pageController.animateToPage(
                        0,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Container(
                      height: 35,
                      width: 160,
                      decoration: BoxDecoration(
                        color: controller.currentPage.value == 0
                            ? AppColors.backgroundColor
                            : Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Center(
                        child: Text(
                          "Request Donation",
                          style: TextStyle(
                            color: controller.currentPage.value == 0
                                ? AppColors.bgscafold
                                : AppColors.grey600,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Obx(
                  () => InkWell(
                    onTap: () {
                      controller.currentPage.value = 1;
                      controller.pageController.animateToPage(
                        1,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Container(
                      height: 35,
                      width: 160,
                      decoration: BoxDecoration(
                        color: controller.currentPage.value == 1
                            ? AppColors.backgroundColor
                            : Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Center(
                        child: Text(
                          "Donation Request",
                          style: TextStyle(
                            color: controller.currentPage.value == 1
                                ? AppColors.bgscafold
                                : AppColors.grey600,
                            fontWeight: FontWeight.w500,
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
        Expanded(
          child: PageView(
            controller: controller.pageController,
            onPageChanged: (index) {
              controller.currentPage.value = index;
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

  Widget _requestDonationPage(RxSet<int> selectedItems) {
    return Obx(
      () => ListView.builder(
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
              padding: const EdgeInsets.only(bottom: 16),
              child: Container(
                decoration: BoxDecoration(
                  border: isSelected
                      ? Border.all(color: AppColors.backgroundColor, width: 2)
                      : null,
                  borderRadius: BorderRadius.circular(8),
                ),
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
            ),
          );
        },
      ),
    );
  }

  Widget _donationRequestPage(RxSet<int> selectedItems) {
    return Obx(
      () => ListView.builder(
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
              padding: const EdgeInsets.only(bottom: 16),
              child: Container(
                decoration: BoxDecoration(
                  border: isSelected
                      ? Border.all(color: AppColors.backgroundColor, width: 2)
                      : null,
                  borderRadius: BorderRadius.circular(8),
                ),
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
            ),
          );
        },
      ),
    );
  }
}
