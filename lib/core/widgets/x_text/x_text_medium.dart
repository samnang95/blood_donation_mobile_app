import 'package:flutter/material.dart';

class XTextMedium extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextAlign? textAlign;

  const XTextMedium({
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
    final scale = width / 375.0;
    final fontSize = 20 * scale;

    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: overflow,
      style: TextStyle(
        fontSize: fontSize.clamp(16, 24),
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
