import 'package:flutter/material.dart';

class RequestFormList extends StatelessWidget {
  final String? hintText;
  final String? icon;
  final TextEditingController? controller;
  const RequestFormList({
    super.key,
    required this.hintText,
    this.icon,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 16.0),
          child: Row(
            children: [
              if (icon != null) ...[
                Image.asset(icon!, width: 24, height: 24),
                const SizedBox(width: 8),
              ],
              SizedBox(width: 2),
              Expanded(
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: InputBorder.none,
                    hintStyle: const TextStyle(color: Colors.black54),
                  ),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(color: Colors.grey[300], thickness: 1),
      ],
    );
  }
}
