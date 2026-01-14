import 'package:blood_donation_mobile_app/core/widgets/x_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/widgets/x_card/x_card_find_donor.dart';
import '../../core/widgets/x_text_field/x_text_research.dart';
import 'search_controller.dart';

class SearchHome extends GetView<DonorSearchController> {
  const SearchHome({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return XScaffold(
      title: 'Find Donors',
      onNotificationTap: () {
        Get.toNamed('/notification');
      },
      body: Padding(
        padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
        child: Column(
          children: [
            XTextResearch(
              controller: searchController,
              onChanged: (value) {
                print(value);
              },
              onClear: () {
                print('Cleared');
              },
            ),
            Obx(
              () => controller.showDivider.value
                  ? Divider(height: 1, color: Colors.grey[200], thickness: 1)
                  : SizedBox.shrink(),
            ),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  controller: controller.scrollController,
                  itemCount: controller.donors.length,
                  itemBuilder: (context, index) {
                    var donor = controller.donors[index];
                    return Padding(
                      padding: const EdgeInsets.only(
                        right: 8,
                        left: 8,
                        top: 8,
                        bottom: 8,
                      ),
                      child: XCardFindDonor(
                        name: donor['name'],
                        hospital: donor['hospital'],
                        bloodType: donor['bloodType'],
                        onTap: () {
                          Get.toNamed('/detail', arguments: donor);
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
