import 'package:blood_donation_mobile_app/core/constants/app_images.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final String imageUrl;
  final String textButton;
  final String title;
  final String subTitle;
  final VoidCallback? onEdit;

  const ProfileImage({
    super.key,
    required this.imageUrl,
    required this.textButton,
    required this.title,
    required this.subTitle,
    this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      // padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
      child: Column(
        children: [
          /// Edit button (top right)
          Align(
            alignment: Alignment.topRight,
            child: TextButton(
              onPressed: onEdit,
              child: Text(
                textButton,
                style: const TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
          ),

          const SizedBox(height: 8),

          /// Profile Image
          CircleAvatar(
            radius: 48,
            backgroundColor: Colors.grey.shade200,
            backgroundImage: imageUrl.isNotEmpty
                ? NetworkImage(imageUrl)
                : null,
            child: imageUrl.isEmpty
                ? SizedBox(
                    // width: 40,
                    // height: 50,
                    child: Image.asset(
                      AppImages.profileImages,
                      // fit: BoxFit.cover,
                    ),
                  )
                : null,
          ),

          const SizedBox(height: 16),

          /// Name
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),

          const SizedBox(height: 8),

          /// Subtitle (hospital / location)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.callImages),
              const SizedBox(width: 8),
              Text(
                subTitle,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
