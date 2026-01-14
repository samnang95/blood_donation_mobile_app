import 'package:blood_donation_mobile_app/core/constants/app_config.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_routes.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppConfig.APP_NAME,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      initialRoute: AppRoutes.home,
      getPages: AppRoutes.routes,
    );
  }
}
