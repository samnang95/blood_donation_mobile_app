import 'package:blood_donation_mobile_app/core/constants/app_colors.dart';
import 'package:blood_donation_mobile_app/core/constants/app_images.dart';
import 'package:blood_donation_mobile_app/core/widgets/x_scaffold.dart';
import 'package:blood_donation_mobile_app/feature/profile/profile_controller.dart';
import 'package:blood_donation_mobile_app/feature/profile/widgets/profile_image.dart';
import 'package:blood_donation_mobile_app/feature/profile/widgets/profile_list.dart';
import 'package:blood_donation_mobile_app/feature/profile/widgets/profile_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return XScaffold(
      title: "Profile",
      onNotificationTap: () {
        Get.toNamed('/notification');
      },
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ProfileImage(
                imageUrl: '', // empty = default avatar
                textButton: 'Edit',
                title: 'Van Chackriya',
                subTitle: 'General Hospital, Phnom Penh',
                onEdit: () {
                  Get.toNamed('/edit-profile');
                },
              ),
              SizedBox(height: 16),
              XUserStats(bloodType: 'O+', donated: 3, request: 6),
              ProfileList(
                title: 'Available for donate',
                prefixIcon: Image.asset(AppImages.personList),
                suffixIcon: Image.asset(AppImages.button),
                onTap: () {},
              ),
              ProfileList(
                title: 'Invite a Friends',
                prefixIcon: Image.asset(AppImages.add),
                onTap: () {
                  Get.toNamed('/setting');
                },
              ),
              ProfileList(
                title: 'Edit Profile',
                prefixIcon: Image.asset(AppImages.noteList),
                onTap: () {
                  Get.toNamed('/setting');
                },
              ),
              ProfileList(
                title: 'Setting',
                prefixIcon: Image.asset(AppImages.setting),
                onTap: () {
                  Get.toNamed('/setting');
                },
              ),
              ProfileList(
                title: 'Sign Out',
                textColor: AppColors.red400,
                prefixIcon: Image.asset(AppImages.signOut),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
