import 'package:blood_donation_mobile_app/core/constants/app_images.dart';
import 'package:blood_donation_mobile_app/core/widgets/x_scaffold.dart';
import 'package:blood_donation_mobile_app/feature/edit_profile/widgets/edit_profile_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../core/constants/app_icons.dart';
import '../../core/widgets/x_button/x_button.dart';
import 'edit_profile_controller.dart';

class EditProfilePage extends GetView<EditProfileController> {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return XScaffold(
      title: 'Edit Profile',
      backIcone: SvgPicture.asset(
        AppIcons.icArrowLeft,
        colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
      onBackTap: () {},
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                EditProfileList(
                  hintText: 'First Name',
                  icon: AppImages.person,
                  controller: controller.firstNameController,
                ),
                EditProfileList(
                  hintText: 'Last Name',
                  icon: AppImages.person,
                  controller: controller.lastNameController,
                ),
                EditProfileList(
                  hintText: 'Email ID',
                  icon: AppImages.email,
                  controller: controller.emailController,
                ),
                EditProfileList(
                  hintText: 'Mobile Number',
                  icon: AppImages.call,
                  controller: controller.mobileController,
                ),
                EditProfileList(
                  hintText: 'Location',
                  icon: AppImages.location,
                  controller: controller.locationController,
                ),
              ],
            ),
            XButton(
              text: "Update",
              onPressed: () {
                print('First Name: ${controller.firstNameController.text}');
                print('Last Name: ${controller.lastNameController.text}');
                print('Email: ${controller.emailController.text}');
                print('Mobile: ${controller.mobileController.text}');
                print('Location: ${controller.locationController.text}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
