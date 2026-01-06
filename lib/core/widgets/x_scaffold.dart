import 'package:blood_donation_mobile_app/core/constants/app_images.dart';
import 'package:blood_donation_mobile_app/core/widgets/x_text/x_text_medium.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class XScaffold extends StatelessWidget {
  final String title;
  final Widget? body;
  final Widget? bottomNavigationBar;
  final VoidCallback? onNotificationTap;
  final Widget? backIcone;
  final VoidCallback? onBackTap;

  const XScaffold({
    super.key,
    required this.title,
    this.body,
    this.bottomNavigationBar,
    this.onNotificationTap,
    this.backIcone,
    this.onBackTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: XAppBar(
          title: title,
          onNotificationTap: onNotificationTap,
          backIcone: backIcone,
          onBackTap: onBackTap,
        ),
      ),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}

// app bar
class XAppBar extends StatelessWidget {
  final String title;
  final VoidCallback? onNotificationTap;
  final FontWeight? fontWeight;
  final Widget? backIcone;
  final VoidCallback? onBackTap;

  const XAppBar({
    super.key,
    required this.title,
    this.onNotificationTap,
    this.fontWeight,
    this.backIcone,
    this.onBackTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      color: AppColors.bgscafold,
      child: SafeArea(
        bottom: false,
        child: SizedBox(
          height: 56,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// Back Icon (optional)
              if (backIcone != null) ...[
                GestureDetector(
                  onTap:
                      onBackTap ??
                      () {
                        print('Back tapped');
                      },
                  child: backIcone!,
                ),
                const SizedBox(width: 12),
              ],

              /// Title
              Expanded(
                child: XTextMedium(
                  text: title,
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: fontWeight ?? FontWeight.w600,
                ),
              ),

              /// Notification Icon
              IconButton(
                onPressed: onNotificationTap,
                icon: Image.asset(AppImages.img, height: 26, width: 26),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
