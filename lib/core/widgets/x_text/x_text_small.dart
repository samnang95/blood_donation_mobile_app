import 'package:flutter/material.dart';

class XTextSmall extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextAlign? textAlign;

  const XTextSmall({
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
    final scale = width / 335;
    final fontSize = 12 * scale;

    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize.clamp(10, 14),
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
