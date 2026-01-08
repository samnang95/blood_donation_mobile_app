import 'package:blood_donation_mobile_app/core/widgets/x_scaffold.dart';
import 'package:blood_donation_mobile_app/feature/report/report_controller.dart';
import 'package:blood_donation_mobile_app/feature/report/widgets/report_tap.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportPage extends GetView<ReportController> {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return XScaffold(
      title: "Report",
      body: SizedBox(
        child: Column(children: [Expanded(child: ReportTap())]),
      ),
    );
  }
}
