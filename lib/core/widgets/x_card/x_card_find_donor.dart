import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_icons.dart';

class XCardFindDonor extends StatelessWidget {
  final String name;
  final String hospital;
  final String bloodType;
  final String imageProfile;
  final VoidCallback? onTap;

  const XCardFindDonor({
    super.key,
    required this.name,
    required this.hospital,
    required this.bloodType,
    required this.imageProfile,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 12),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(12),
        // border: Border.all(color: AppColors.grey200, width: 1),
        border: Border(
          bottom: BorderSide(color: AppColors.grey200, width: 1),
          left: BorderSide(color: AppColors.grey200, width: 1),
          right: BorderSide(color: AppColors.grey200, width: 1),
          top: BorderSide(color: AppColors.grey200, width: 1),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withValues(alpha: 0.03),
            blurRadius: 2,
            // offset: const Offset(0, 4),
          ),
        ],
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                // border: Border.all(color: AppColors.darkColor, width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(imageProfile, fit: BoxFit.cover),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// NAME + BLOOD TYPE
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        bloodType,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),

                  /// HOSPITAL + ICON
                  Row(
                    children: [
                      // Image.asset(AppImages.mapHospital, width: 14),
                      SvgPicture.asset(AppIcons.icMapHospital),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          hospital,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: AppColors.darkColor,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      SvgPicture.asset(AppIcons.icBlood),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
