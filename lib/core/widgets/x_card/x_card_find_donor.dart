import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_icons.dart';
import '../../constants/app_images.dart';

class XCardFindDonor extends StatelessWidget {
  final String name;
  final String hospital;
  final String bloodType;
  final VoidCallback? onTap;

  const XCardFindDonor({
    super.key,
    required this.name,
    required this.hospital,
    required this.bloodType,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 12),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withValues(alpha: 0.1),
            blurRadius: 6,
            spreadRadius: 0,
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
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: Image.asset(AppImages.profile, fit: BoxFit.cover),
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
