import 'package:flutter/material.dart';

class XButtonHintText extends StatelessWidget {
  final String hintText;
  final String? prefixIcon;
  final String? suffixIcon;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final bool obscureText;
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;

  const XButtonHintText({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.onChanged,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey[400], fontSize: 14),
        prefixIcon: prefixIcon != null
            ? Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(prefixIcon!, width: 24, height: 24),
              )
            : null,
        suffixIcon: suffixIcon != null
            ? Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(suffixIcon!, width: 24, height: 24),
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey[200]!),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey[200]!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.blue),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
