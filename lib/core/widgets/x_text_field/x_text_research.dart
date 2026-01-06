import 'package:blood_donation_mobile_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../../constants/app_images.dart';

class XTextResearch extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  const XTextResearch({
    super.key,
    this.hintText = 'Name',
    this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.shade300, width: 1.5),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: SizedBox(child: Image.asset(AppImages.textSearch)),
          hintText: hintText,
          hintStyle: TextStyle(color: AppColors.grey200, fontSize: 16),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 14),
        ),
      ),
    );
  }
}
