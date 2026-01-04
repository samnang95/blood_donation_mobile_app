import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../x_container.dart';

class XCardFindDonor extends StatelessWidget {
  final String name;
  final String hospital;
  final String bloodType;
  final String imageProfile;
  final Color bloodColor;
  final VoidCallback? onTap;
  final String iconPath;
  final String iconHospital;

  const XCardFindDonor({
    super.key,
    required this.name,
    required this.hospital,
    required this.bloodType,
    required this.imageProfile,
    required this.bloodColor,
    this.onTap,
    required this.iconPath,
    required this.iconHospital,
  });

  @override
  Widget build(BuildContext context) {
    return XContainer(
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 16),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            // SvgPicture.asset(imagePath, fit: BoxFit.cover),
            Image.asset(imageProfile, fit: BoxFit.cover, width: 70, height: 70),
            const SizedBox(width: 16),
            // Donor Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          bloodType,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(iconHospital),
                          SizedBox(width: 8),
                          Text(
                            hospital,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset(iconPath),
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
