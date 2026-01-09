import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_icons.dart';

class XCardNotication extends StatelessWidget {
  final String title;
  final String message;
  final String time;
  final VoidCallback onViewDetails;
  final VoidCallback onShare;

  const XCardNotication({
    super.key,
    required this.title,
    required this.message,
    required this.time,
    required this.onViewDetails,
    required this.onShare,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(16),
        // border: const Border.fromBorderSide(
        //   BorderSide(color: AppColors.grey10, width: 1),
        // ),
        boxShadow: [
          BoxShadow(
            // color: AppColors.grey600,
            // blurRadius: 0.01,
            spreadRadius: 0.1,
            // offset: const Offset(0, 0.1),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 38,
            height: 38,
            decoration: const BoxDecoration(
              color: Color(0xFFE0E0E0),
              shape: BoxShape.circle,
            ),
            child: Center(child: SvgPicture.asset(AppIcons.icBlood)),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  message,
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.grey600,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        _textButton('View Details', onViewDetails),
                        SizedBox(width: 10),
                        _textButton('Share', onShare),
                      ],
                    ),
                    Text(
                      time,
                      style: const TextStyle(
                        color: AppColors.grey600,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
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
}

Widget _textButton(String text, VoidCallback onTap) {
  return InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(8),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.grey10,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: AppColors.bgscafold,
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
      ),
    ),
  );
}

Widget _buildTime(String time) {
  return Row(
    children: [
      Icon(Icons.access_time, size: 12, color: AppColors.grey600),
      const SizedBox(width: 4),
      Text(
        time,
        style: const TextStyle(
          fontSize: 12,
          color: AppColors.grey600,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
