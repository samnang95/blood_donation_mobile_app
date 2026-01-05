import 'package:blood_donation_mobile_app/core/constants/app_images.dart';
import 'package:blood_donation_mobile_app/core/widgets/x_text/x_text_medium.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class XScaffold extends StatelessWidget {
  final String title;
  final Widget? body;
  final Widget? bottomNavigationBar;
  final VoidCallback? onNotificationTap;

  const XScaffold({
    super.key,
    required this.title,
    this.body,
    this.bottomNavigationBar,
    this.onNotificationTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: XAppBar(title: title, onNotificationTap: onNotificationTap),
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

  const XAppBar({
    super.key,
    required this.title,
    this.onNotificationTap,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      // decoration: const BoxDecoration(gradient: XGradientColors.appBarGradient),
      color: AppColors.bgscafold,
      child: SafeArea(
        bottom: false,
        child: SizedBox(
          height: 56,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// Title (Home)
              XTextMedium(
                text: title,
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),

              const Spacer(),

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
