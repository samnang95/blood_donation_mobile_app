import 'package:blood_donation_mobile_app/feature/impact/widgets/impact_section_bottom.dart';
import 'package:blood_donation_mobile_app/feature/impact/widgets/impact_section_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../core/constants/app_icons.dart';
import 'impact_controller.dart';

class ImpactPage extends GetView<ImpactController> {
  const ImpactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              AppIcons.icBigestBlood,
              fit: BoxFit.cover,
              color: Colors.red[100],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ImpactSectionTop(
                    onTap: () {
                      print("impact tapppp");
                    },
                  ),
                  SvgPicture.asset(AppIcons.icBigBlood),
                  Column(
                    children: [ImpactSectionBottom(), SizedBox(height: 30)],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
