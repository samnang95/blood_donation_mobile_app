import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class XGradientColors {
  XGradientColors._();

  static const LinearGradient appBarGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [AppColors.blue400, AppColors.blue600],
  );
}
