import 'package:blood_donation_mobile_app/core/constants/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/app_colors.dart';

class XButtonBack extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback? onTap;
  final double size;
  final double iconSize; // New parameter for icon size
  final Color backgroundColor;
  final Color iconColor;
  final double borderRadius;

  const XButtonBack({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.onTap,
    this.size = 36, // Background/container size
    this.iconSize = 20, // Icon size
    this.backgroundColor = Colors.white,
    this.iconColor = Colors.black,
    this.borderRadius = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: color,
            fontWeight: FontWeight.w600,
          ),
        ),
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(size / 2),
          child: Container(
            width: size, // Background width
            height: size, // Background height
            decoration: BoxDecoration(
              color: AppColors.bgscafold,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: SizedBox(
                width: iconSize, // Icon size
                height: iconSize,
                child: SvgPicture.asset(
                  AppIcons.icArrowRight,
                  fit: BoxFit.contain,
                  colorFilter: ColorFilter.mode(
                    AppColors.backgroundColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
