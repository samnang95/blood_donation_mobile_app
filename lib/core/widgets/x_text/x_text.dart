import 'package:flutter/material.dart';

class XText extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextAlign? textAlign;
  const XText({
    super.key,
    required this.text,
    this.color = Colors.white,
    this.fontWeight,
    this.overflow,
    this.maxLines,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final scale = width / 375;
    final fontSize = 16 * scale;
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize.clamp(14, 20),
        color: color,
        fontWeight: fontWeight,
        overflow: overflow,
      ),
      maxLines: maxLines,
    );
  }
}
