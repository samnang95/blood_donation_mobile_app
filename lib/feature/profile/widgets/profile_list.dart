import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class ProfileList extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String title;
  final TextStyle? textStyle;
  final Color? textColor;
  final VoidCallback? onTap;

  const ProfileList({
    super.key,
    required this.title,
    this.prefixIcon,
    this.suffixIcon,
    this.textStyle,
    this.textColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 16,
                bottom: 8,
                left: 16,
                right: 8,
              ),
              child: Row(
                children: [
                  // Prefix Icon (Optional)
                  if (prefixIcon != null) ...[
                    SizedBox(width: 25, height: 25, child: prefixIcon!),
                    const SizedBox(width: 12),
                  ],

                  // Title
                  Expanded(
                    child: Text(
                      title,
                      style:
                          textStyle ??
                          TextStyle(
                            fontSize: 14,
                            // fontWeight: FontWeight.w600,
                            color: textColor ?? AppColors.darkColor,
                          ),
                    ),
                  ),

                  // Suffix Icon (Optional)
                  if (suffixIcon != null) ...[
                    SizedBox(width: 40, height: 40, child: suffixIcon!),
                    const SizedBox(width: 12),
                  ],
                ],
              ),
            ),

            // Divider
            Divider(color: AppColors.grey200, thickness: 1, height: 1),
          ],
        ),
      ),
    );
  }
}
