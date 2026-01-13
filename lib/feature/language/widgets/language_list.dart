import 'package:flutter/material.dart';

class LanguageList extends StatelessWidget {
  final String? text;
  final VoidCallback? onTap;
  // final String prefixIcon;
  // final String suffixIcon;
  const LanguageList({
    super.key,
    this.text,
    this.onTap,
    // required this.prefixIcon,
    // required this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          width: 148,
          height: 44,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey, width: 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_select(), _select(), _select()],
          ),
        ),
      ),
    );
  }

  Widget _select() {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[300],
      ),
      child: Center(
        child: Container(
          width: 11.29,
          height: 11.29,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
