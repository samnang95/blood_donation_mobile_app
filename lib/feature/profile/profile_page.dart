import 'package:blood_donation_mobile_app/core/constants/app_colors.dart';
import 'package:blood_donation_mobile_app/core/constants/app_images.dart';
import 'package:blood_donation_mobile_app/core/widgets/x_scaffold.dart';
import 'package:blood_donation_mobile_app/feature/profile/widgets/profile_image.dart';
import 'package:blood_donation_mobile_app/feature/profile/widgets/profile_list.dart';
import 'package:blood_donation_mobile_app/feature/profile/widgets/profile_state.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return XScaffold(
      title: "Profile",
      onNotificationTap: () {},
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
                onEdit: () {},
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
                onTap: () {},
              ),
              ProfileList(
                title: 'Edit Profile',
                prefixIcon: Image.asset(AppImages.noteList),
                onTap: () {},
              ),
              ProfileList(
                title: 'Setting',
                prefixIcon: Image.asset(AppImages.setting),
                onTap: () {},
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
