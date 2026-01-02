import 'package:blood_donation_mobile_app/feature/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/widgets/x_scaffold.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return XScaffold(
      title: 'Home',
      // body: Center(child: Text('Home Screen')),
    );
  }
}
