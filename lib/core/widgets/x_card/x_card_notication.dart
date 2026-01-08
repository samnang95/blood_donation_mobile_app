import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/app_colors.dart';
import '../x_container.dart';

class XCardNotication extends StatelessWidget {
  final String title;
  final String message;
  final String time;
  final String iconPath;
  final VoidCallback onViewDetails;
  final VoidCallback onShare;

  const XCardNotication({
    super.key,
    required this.title,
    required this.message,
    required this.time,
    required this.iconPath,
    required this.onViewDetails,
    required this.onShare,
  });

  @override
  Widget build(BuildContext context) {
    return XContainer(
      padding: const EdgeInsets.all(16),
      backgroundColor: AppColors.colorWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 🔴 Header
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// SVG Icon
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: AppColors.grey200, // background color
                  shape: BoxShape.circle, // makes it a circle
                  // border: Border.all(color: AppColors.grey200, width: 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 4,
                      // offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: SvgPicture.asset(iconPath, fit: BoxFit.scaleDown),
                ),
              ),

              const SizedBox(width: 12),

              /// Title & Message
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.darkColor,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      message,
                      style: TextStyle(fontSize: 14, color: AppColors.grey600),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          /// 🔵 Actions
          Row(
            children: [
              const SizedBox(width: 48),

              // View Details Button
              GestureDetector(
                onTap: onViewDetails,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    // color: AppColors.grey200, // grey background
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8), // rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const Text(
                    'View Details',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 8),

              // Share Button
              GestureDetector(
                onTap: onShare,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    // color: AppColors.grey200,
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const Text(
                    'Share',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              // const Spacer(),
              Text(
                time,
                style: const TextStyle(fontSize: 12, color: AppColors.grey400),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
