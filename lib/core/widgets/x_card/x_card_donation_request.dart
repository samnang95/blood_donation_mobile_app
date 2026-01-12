import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_icons.dart';

class XCardDonationRequest extends StatelessWidget {
  final String name;
  final String location;
  final String timeAgo;
  final String? status;
  final String bloodType;
  final VoidCallback? onAccept;
  final VoidCallback? onReject;

  const XCardDonationRequest({
    super.key,
    required this.name,
    required this.location,
    required this.timeAgo,
    this.status,
    required this.bloodType,
    this.onAccept,
    this.onReject,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 12, 12),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.grey200, width: 1),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey200.withValues(alpha: 0.07),
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// NAME + BLOOD TYPE
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _labelRow(AppIcons.icProfile, "Name"),
                  const SizedBox(height: 2),
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(
                bloodType,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const SizedBox(height: 8),

          /// LOCATION
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _labelRow(AppIcons.icLocation, "Location"),
                    const SizedBox(height: 2),
                    Text(location, style: const TextStyle(fontSize: 14)),
                  ],
                ),
              ),
              SvgPicture.asset(AppIcons.icBlood, width: 40, height: 40),
            ],
          ),

          const SizedBox(height: 8),

          /// TIME
          _labelRow(AppIcons.icTime, "Time"),
          const SizedBox(height: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(timeAgo, style: const TextStyle(fontSize: 12)),
              status != null
                  ? Text(
                      status!,
                      style: TextStyle(
                        color: status == "Pending"
                            ? AppColors.orange500
                            : status == "Completed"
                            ? AppColors.green500
                            : AppColors.orange500,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    )
                  : const SizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: onReject,
                        child: const Text(
                          "Reject",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(width: 26),
                      GestureDetector(
                        onTap: onAccept,
                        child: const Text(
                          "Accept",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// LABEL ROW
  Widget _labelRow(String svgPath, String label) {
    return Row(
      children: [
        SvgPicture.asset(
          svgPath,
          width: 16,
          height: 16,
          colorFilter: const ColorFilter.mode(
            AppColors.grey600,
            BlendMode.srcIn,
          ),
        ),
        const SizedBox(width: 6),
        Text(
          label,
          style: const TextStyle(color: AppColors.grey600, fontSize: 12),
        ),
      ],
    );
  }
}
