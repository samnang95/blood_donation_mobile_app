import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/root_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      startLocale: const Locale('en', 'US'),
      supportedLocales: const [
        Locale('km', 'KH'),
        Locale('zh', 'CN'),
        Locale('zh', 'TW'),
      ],
      path: 'assets/translation',
      fallbackLocale: const Locale('km', 'KH'),
      child: RootApp(),
    ),
  );
}
