import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class XContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? borderColor;
  final Widget child;
  final bool isShadow;
  final EdgeInsetsGeometry? padding;
  const XContainer({
    super.key,
    this.height,
    this.width,
    this.padding,
    this.backgroundColor = AppColors.backgroundColor,
    this.borderColor = AppColors.grey400,
    this.isShadow = true,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor ?? Colors.transparent, width: 1),
        boxShadow: [
          if (isShadow)
            BoxShadow(
              color: AppColors.grey600,
              blurRadius: 1,
              spreadRadius: 0.1,
            ),
        ],
      ),
      child: child,
    );
  }
}
