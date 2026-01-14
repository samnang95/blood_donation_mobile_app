import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class EmpowerSectionTop extends StatelessWidget {
  final VoidCallback? onEdit;
  const EmpowerSectionTop({super.key, this.onEdit});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _paginationSection(),
        TextButton(
          onPressed: onEdit,
          child: Text(
            "Skip",
            style: const TextStyle(color: AppColors.blue300, fontSize: 28),
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
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: AppColors.grey200,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: AppColors.bgscafold,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(
            width: 15,
            height: 15,
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
