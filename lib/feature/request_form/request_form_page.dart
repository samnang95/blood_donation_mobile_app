import 'package:blood_donation_mobile_app/core/widgets/x_scaffold.dart';
import 'package:blood_donation_mobile_app/feature/request_form/request_form_controller.dart';
import 'package:blood_donation_mobile_app/feature/request_form/widgets/request_form_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/app_images.dart';
import '../../core/widgets/x_button/x_button.dart';

class RequestFormPage extends GetView<RequestFormController> {
  const RequestFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return XScaffold(
      title: "Request Form",
      backIcone: const Icon(Icons.arrow_back, color: Colors.white),
      onNotificationTap: () {
        // Handle notification tap
        Get.toNamed('/notification');
      },
      onBackTap: () {
        Get.back();
      },
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                RequestFormList(
                  hintText: 'Name',
                  icon: AppImages.person,
                  controller: controller.nameController,
                ),
                RequestFormList(
                  hintText: 'Location',
                  icon: AppImages.location,
                  controller: controller.locationController,
                ),
                RequestFormList(
                  hintText: 'Blood Type',
                  icon: AppImages.blood,
                  controller: controller.bloodTypeController,
                ),
                RequestFormList(
                  hintText: 'Mobile',
                  icon: AppImages.call,
                  controller: controller.mobileController,
                ),
                RequestFormList(
                  hintText: 'Add Notes',
                  icon: AppImages.note,
                  controller: controller.notesController,
                ),
              ],
            ),
            XButton(
              text: "Request",
              onPressed: () {
                // Handle request submission
                print("Name: ${controller.nameController.text}");
                print("Location: ${controller.locationController.text}");
                print("Blood Type: ${controller.bloodTypeController.text}");
                print("Mobile: ${controller.mobileController.text}");
                print("Notes: ${controller.notesController.text}");
              },
            ),
          ],
        ),
      ),
    );
  }
}
