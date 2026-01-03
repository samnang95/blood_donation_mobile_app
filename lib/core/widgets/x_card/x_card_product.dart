import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_icons.dart';
import '../x_text/x_text.dart';
import '../x_text/x_text_small.dart';

class XCardProduct extends StatelessWidget {
  final String title;
  final String urlImages;
  final String price;
  final List<String> listColor;
  final String size;
  final VoidCallback? onFavoriteTap;
  final bool isFav;
  const XCardProduct({
    super.key,
    required this.urlImages,
    required this.title,
    required this.price,
    required this.listColor,
    required this.size,
    this.onFavoriteTap,
    this.isFav = false,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = (screenWidth - 16 * 3) / 2;
    final imageHeight = cardWidth * 1.2;
    final colorBoxSize = cardWidth * 0.10;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: imageHeight,
          decoration: BoxDecoration(
            color: AppColors.blue500,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(urlImages),
              fit: BoxFit.contain,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: onFavoriteTap,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: AppColors.grey600,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    isFav ? AppIcons.password : AppIcons.icLogo,
                  ),
                ),
              ),
            ),
          ),
        ),

        const SizedBox(height: 6),

        /// TITLE
        XTextSmall(text: title, color: Colors.black),

        const SizedBox(height: 6),

        /// PRICE
        XText(
          text: '\$$price',
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),

        const SizedBox(height: 6),

        /// COLORS
        SizedBox(
          height: colorBoxSize,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listColor.length,
            itemBuilder: (_, index) {
              return Container(
                width: colorBoxSize,
                margin: const EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                  color: hexToColor(listColor[index]),
                  borderRadius: BorderRadius.circular(3),
                ),
              );
            },
          ),
        ),

        const SizedBox(height: 7),

        /// SIZE
        XTextSmall(text: size, color: Colors.black),
      ],
    );
  }
}

Color hexToColor(String code) {
  code = code.replaceAll('#', '');
  if (code.length == 6) code = 'FF$code';
  return Color(int.parse(code, radix: 16));
}
