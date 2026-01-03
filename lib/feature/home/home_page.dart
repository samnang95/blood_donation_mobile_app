import 'package:blood_donation_mobile_app/feature/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/widgets/x_container.dart';
import '../../core/widgets/x_scaffold.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return XScaffold(
      title: 'Home',
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            XContainer(
              height: 200,
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Blood Donation Info',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
