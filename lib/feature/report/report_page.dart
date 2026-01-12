import 'package:blood_donation_mobile_app/core/widgets/x_scaffold.dart';
import 'package:blood_donation_mobile_app/feature/report/report_controller.dart';
import 'package:blood_donation_mobile_app/feature/report/widgets/report_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportPage extends GetView<ReportController> {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return XScaffold(
      title: "Report",
      onNotificationTap: () {
        Get.toNamed('/notification');
      },
      body: Padding(padding: const EdgeInsets.all(16.0), child: ReportTabBar()),
    );
  }
}
