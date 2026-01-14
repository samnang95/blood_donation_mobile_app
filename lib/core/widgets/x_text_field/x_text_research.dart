import 'package:blood_donation_mobile_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../../constants/app_images.dart';

class XTextResearch extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onClear;

  const XTextResearch({
    super.key,
    this.hintText = 'Name',
    required this.controller,
    this.onChanged,
    this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade300, width: 1.5),
        ),
        child: TextField(
          controller: controller,
          onChanged: onChanged,
          textInputAction: TextInputAction.search,
          textCapitalization: TextCapitalization.none,
          style: const TextStyle(fontSize: 14),
          decoration: InputDecoration(
            isDense: true,

            // 🔍 Search icon
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Image.asset(
                AppImages.textSearch,
                width: 18,
                height: 18,
                color: AppColors.grey200,
              ),
            ),

            // ❌ Clear icon
            suffixIcon: controller.text.isNotEmpty
                ? GestureDetector(
                    onTap: () {
                      controller.clear();
                      onClear?.call();
                    },
                    child: const Icon(Icons.close),
                  )
                : null,

            contentPadding: const EdgeInsets.symmetric(vertical: 12),
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 14, color: AppColors.grey200),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
