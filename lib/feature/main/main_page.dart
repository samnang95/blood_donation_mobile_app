import 'package:blood_donation_mobile_app/feature/home/home_page.dart';
import 'package:blood_donation_mobile_app/feature/profile/profile_page.dart';
import 'package:blood_donation_mobile_app/feature/search/search_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_images.dart';
import '../report/report_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final RxInt currentIndex = 0.obs;

  final List<Widget> pages = [
    const HomePage(),
    const SearchHome(),
    const ReportPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[currentIndex.value]),
      backgroundColor: Colors.white,
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: currentIndex.value,
          onTap: (index) => currentIndex.value = index,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: AppColors.backgroundColor,
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppImages.homeNav)),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppImages.findDonorsNav)),
              label: 'Find Donors',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppImages.reportNav)),
              label: 'Reports',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppImages.profileNav)),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
