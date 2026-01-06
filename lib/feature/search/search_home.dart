import 'package:blood_donation_mobile_app/core/widgets/x_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/widgets/x_card/x_card_find_donor.dart';
import '../../core/widgets/x_text_field/x_text_research.dart';
import 'search_controller.dart' as search;

class SearchHome extends GetView<search.SearchController> {
  const SearchHome({super.key});

  @override
  Widget build(BuildContext context) {
    return XScaffold(
      title: 'Find Donors',
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            XTextResearch(
              onChanged: (value) {
                print(value);
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
