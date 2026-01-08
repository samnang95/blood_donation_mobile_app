import 'package:blood_donation_mobile_app/core/constants/app_config.dart';
import 'package:blood_donation_mobile_app/feature/home/home_controller.dart';
import 'package:blood_donation_mobile_app/feature/profile/profile_controller.dart';
import 'package:blood_donation_mobile_app/feature/search/search_controller.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../feature/report/report_controller.dart';
import '../routes/app_routes.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    Get.put(DonorSearchController());
    // Get.put(DonationRequestController());
    // Get.put(RequestDonationController());
    Get.put(ReportController());
    Get.put(ProfileController());
    return GetMaterialApp(
      title: AppConfig.APP_NAME,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      // theme: AppThemes.lightTheme,
      // darkTheme: AppThemes.darkTheme,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      initialRoute: AppRoutes.main,
      getPages: AppRoutes.routes,
    );
  }
}
