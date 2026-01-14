import 'package:blood_donation_mobile_app/core/constants/app_icons.dart';
import 'package:blood_donation_mobile_app/feature/empower_generosity/widgets/empower_section_bottom.dart';
import 'package:blood_donation_mobile_app/feature/empower_generosity/widgets/empower_section_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../core/constants/app_colors.dart';
import 'empower_controller.dart';

class EmpowerPage extends GetView<EmpowerController> {
  const EmpowerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  EmpowerSectionTop(
                    onEdit: () {
                      print("Hello");
                    },
                  ),
                  SvgPicture.asset(AppIcons.icNoToManSuperhero),
                ],
              ),
              EmpowerSectionBottom(),
              EmpowerSectionBottom(),
            ],
          ),
        ),
      ),
    );
  }
}
