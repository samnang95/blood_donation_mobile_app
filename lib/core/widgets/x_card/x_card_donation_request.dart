import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_icons.dart';
import '../x_container.dart';

class XBloodRequestCard extends StatelessWidget {
  final String name;
  final String location;
  final String timeAgo;
  final String status;
  final String bloodType;
  final VoidCallback? onAccept;
  final VoidCallback? onReject;

  const XBloodRequestCard({
    super.key,
    required this.name,
    required this.location,
    required this.timeAgo,
    required this.status,
    required this.bloodType,
    this.onAccept,
    this.onReject,
  });

  @override
  Widget build(BuildContext context) {
    return XContainer(
      padding: const EdgeInsets.all(16),
      backgroundColor: AppColors.backgroundColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// NAME + BLOOD TYPE
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _labelRow(AppIcons.icProfile, "Name"),
                    Text(
                      bloodType,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                // const SizedBox(height: 4),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                /// LOCATION
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _labelRow(AppIcons.icLocation, "Location"),
                          Text(location, style: const TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                    SvgPicture.asset(AppIcons.icBlood, width: 48, height: 48),
                  ],
                ),

                const SizedBox(height: 4),

                /// TIME
                _labelRow(AppIcons.icTime, "Time"),

                const SizedBox(height: 6),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(timeAgo, style: const TextStyle(fontSize: 18)),
                    Text(
                      status,
                      style: const TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    GestureDetector(
                      onTap: onReject,
                      child: const Text(
                        "Reject",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: onAccept,
                      child: const Text(
                        "Accept",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// SVG LABEL ROW
  Widget _labelRow(String svgPath, String label) {
    return Row(
      children: [
        SvgPicture.asset(
          svgPath,
          colorFilter: const ColorFilter.mode(
            AppColors.grey600,
            BlendMode.srcIn,
          ),
        ),
        const SizedBox(width: 6),
        Text(
          label,
          style: const TextStyle(color: AppColors.grey600, fontSize: 18),
        ),
      ],
    );
  }
}
