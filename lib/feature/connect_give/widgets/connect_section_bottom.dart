import 'package:flutter/material.dart';

class ConnectSectionBottom extends StatelessWidget {
  const ConnectSectionBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Connect & Give',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        SizedBox(height: 20),
        Text(
          'Effortlessly organize your tasks and projects with our intuitive app, designed to boost productivity',
          style: TextStyle(fontSize: 15, color: Colors.grey[700]),
        ),
      ],
    );
  }
}
