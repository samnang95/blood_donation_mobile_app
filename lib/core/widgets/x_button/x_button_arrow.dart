import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_icons.dart';

class XButtonArrow extends StatelessWidget {
  final double size; // diameter of the circle
  final Color backgroundColor;
  final Color iconColor;
  final VoidCallback? onTap;

  const XButtonArrow({
    super.key,
    this.size = 35,
    this.backgroundColor = AppColors.bgscafold,
    this.iconColor = Colors.white,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: SvgPicture.asset(
            AppIcons.icArrowRight, // right arrow icon
            colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
            // height: size * 0.5, // adjust icon size relative to button
            // width: size * 0.5,
          ),
        ),
      ),
    );
  }
}
