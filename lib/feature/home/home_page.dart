import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('welcome'.tr())),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'hello'.tr(),
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // Dropdown to switch language
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: DropdownButton<Locale>(
                  value: context.locale,
                  isExpanded: true,
                  items: context.supportedLocales.map((locale) {
                    String lang = '';
                    switch (locale.languageCode) {
                      case 'en':
                        lang = 'English';
                        break;
                      case 'km':
                        lang = 'Khmer';
                        break;
                      case 'zh':
                        lang = 'Chinese';
                        break;
                    }
                    return DropdownMenuItem(value: locale, child: Text(lang));
                  }).toList(),
                  onChanged: (locale) {
                    if (locale != null) context.setLocale(locale);
                  },
                ),
              ),

              const SizedBox(height: 30),

              // Buttons to switch language
              ElevatedButton(
                onPressed: () => context.setLocale(const Locale('en', 'US')),
                child: const Text('Switch to English'),
              ),
              ElevatedButton(
                onPressed: () => context.setLocale(const Locale('km', 'KH')),
                child: const Text('Switch to Khmer'),
              ),
              ElevatedButton(
                onPressed: () => context.setLocale(const Locale('zh', 'CN')),
                child: const Text('Switch to Chinese'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
