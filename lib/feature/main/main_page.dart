import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_images.dart';
import '../home/home_page.dart';
import '../profile/profile_page.dart';
import '../report/report_page.dart';
import '../search/search_home.dart';
import 'main_controller.dart';

class MainPage extends GetView<MainController> {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: AppColors.backgroundColor,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: PageView(
          controller: controller.pageController,
          physics: NeverScrollableScrollPhysics(), // Disable swipe gesture
          onPageChanged: (index) => controller.changePage(index),
          children: [HomePage(), SearchHome(), ReportPage(), ProfilePage()],
        ),
        bottomNavigationBar: Obx(
          () => Container(
            decoration: BoxDecoration(
              color: AppColors.backgroundColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 10,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildNavItem(
                      icon: AppImages.homeNav,
                      label: "Home",
                      index: 0,
                    ),
                    _buildNavItem(
                      icon: AppImages.findDonorsNav,
                      label: "Find",
                      index: 1,
                    ),
                    _buildNavItem(
                      icon: AppImages.reportNav,
                      label: "Report",
                      index: 2,
                    ),
                    _buildNavItem(
                      icon: AppImages.profileNav,
                      label: "Profile",
                      index: 3,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required String icon,
    required String label,
    required int index,
  }) {
    final isSelected = controller.currentIndex.value == index;

    return GestureDetector(
      onTap: () => controller.changePageWithAnimation(index),
      behavior: HitTestBehavior.opaque,
      child: AnimatedContainer(
        duration: isSelected
            ? const Duration(milliseconds: 300)
            : const Duration(milliseconds: 0),
        curve: Curves.easeInOut,
        padding: EdgeInsets.symmetric(
          horizontal: isSelected ? 16 : 12,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: isSelected
              ? Colors.blue.withValues(alpha: 0.1)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ImageIcon(
              AssetImage(icon),
              color: isSelected ? Colors.blue : Colors.grey[500],
              size: 20,
            ),
            AnimatedSize(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: SizedBox(
                width: isSelected ? null : 0,
                child: isSelected
                    ? Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          label,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue,
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
