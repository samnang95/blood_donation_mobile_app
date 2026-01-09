import 'package:flutter/material.dart';

class XListHit extends StatelessWidget {
  final String title;
  final String? hintText;
  final Widget? leading;
  const XListHit({
    super.key,
    required this.title,
    required this.hintText,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(title),
      subtitle: hintText != null ? Text(hintText!) : null,
    );
  }
}
