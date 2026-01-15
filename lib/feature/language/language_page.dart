import 'package:blood_donation_mobile_app/core/constants/app_icons.dart';
import 'package:blood_donation_mobile_app/feature/language/widgets/language_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../core/widgets/x_button/x_button.dart';
import 'language_controller.dart';

class LanguagePage extends GetView<LanguageController> {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(AppIcons.icLanguageBig),
              Column(children: [LanguageList(), SizedBox(height: 200)]),
              XButton(text: "Confirm", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
