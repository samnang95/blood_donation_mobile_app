import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../x_text/x_text.dart';

class XTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool obscureText;
  final TextEditingController? controller;
  const XTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.controller,
    this.obscureText = true,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final double verticalPadding = width * 0.040;
    final double horizontalPadding = width * 0.04;
    final double normalBorder = width * 0.004;
    final double focusedBorder = width * 0.005;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        XText(
          text: label,
          color: AppColors.darkColor,
          fontWeight: FontWeight.w500,
        ),
        const SizedBox(height: 6),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          // obscuringCharacter: '*',
          style: const TextStyle(fontSize: 14),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 14, color: AppColors.grey600),
            isDense: true,
            contentPadding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: verticalPadding,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: AppColors.grey200,
                width: normalBorder,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: AppColors.grey400,
                width: normalBorder,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: AppColors.blue500,
                width: focusedBorder,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
