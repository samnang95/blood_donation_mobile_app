import 'package:flutter/material.dart';

class XButtonBack extends StatelessWidget {
  final VoidCallback? onTap;
  final double size;
  final Color backgroundColor;
  final Color iconColor;
  final double borderRadius;

  const XButtonBack({
    super.key,
    this.onTap,
    this.size = 36,
    this.backgroundColor = Colors.white,
    this.iconColor = Colors.black,
    this.borderRadius = 12,
  });

  @override
  Widget build(BuildContext context) {
    final srceenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Column(
        children: [
          Container(
            width: srceenWidth * 0.1,
            height: size,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Colors.grey.shade300, width: 1.5),
            ),
            child: Icon(
              Icons.arrow_back_ios_new,
              size: size * 0.45,
              color: iconColor,
            ),
          ),
        ],
      ),
    );
  }
}
