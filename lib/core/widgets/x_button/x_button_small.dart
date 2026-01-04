import 'package:blood_donation_mobile_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../x_container.dart'; // import your XContainer

class XButtonSmall extends StatelessWidget {
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  final double width;
  final double height;
  final double borderRadius;
  final VoidCallback? onTap;

  const XButtonSmall({
    super.key,
    this.backgroundColor = AppColors.grey400,
    this.borderColor = AppColors.grey400,
    this.text = 'OK',
    this.width = 50, // short width
    this.height = 36, // height for tap area
    this.borderRadius = 8,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 250, right: 20),
      child: GestureDetector(
        onTap: onTap,
        child: XContainer(
          width: width,
          height: height,
          backgroundColor: backgroundColor,
          borderColor: borderColor,
          isShadow: true,
          child: Center(
            child: FittedBox(
              fit: BoxFit.scaleDown, // make text fit in short width
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
