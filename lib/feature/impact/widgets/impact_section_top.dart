import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class ImpactSectionTop extends StatelessWidget {
  final VoidCallback? onTap;
  const ImpactSectionTop({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _paginationSection(),
        InkWell(
          onTap: onTap,
          child: Text(
            "Skip",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.blue300,
            ),
          ),
        ),
      ],
    );
  }

  Widget _paginationSection() {
    return Container(
      width: 60,
      height: 30,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: AppColors.grey200,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: AppColors.grey200,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(
            width: 30,
            height: 10,
            decoration: BoxDecoration(
              color: AppColors.bgscafold,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ],
      ),
    );
  }
}
