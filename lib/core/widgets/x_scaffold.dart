import 'package:blood_donation_mobile_app/core/widgets/x_gradient_color.dart';
import 'package:blood_donation_mobile_app/core/widgets/x_text/x_text_medium.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class XScaffold extends StatelessWidget {
  final List<Widget>? leading;
  final String title;
  final Widget? body;
  final Widget? bottomNavigationBar;

  const XScaffold({
    super.key,
    this.leading,
    required this.title,
    this.body,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: XAppBar(leading: leading, title: title),
      ),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}

// app bar
class XAppBar extends StatelessWidget {
  final List<Widget>? leading;
  final String title;

  const XAppBar({super.key, this.leading, required this.title});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.120,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(gradient: XGradientColors.appBarGradient),
      child: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            XTextMedium(
              text: title,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: leading ?? const [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
