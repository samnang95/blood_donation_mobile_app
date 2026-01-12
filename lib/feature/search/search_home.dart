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
        padding: const EdgeInsets.all(16.0),
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
            SizedBox(height: 20),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: controller.donors.length,
                  itemBuilder: (context, index) {
                    var donor = controller.donors[index];
                    return XCardFindDonor(
                      name: donor['name'],
                      hospital: donor['hospital'],
                      bloodType: donor['bloodType'],
                      imageProfile: donor['imageProfile'],
                      onTap: () {},
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
