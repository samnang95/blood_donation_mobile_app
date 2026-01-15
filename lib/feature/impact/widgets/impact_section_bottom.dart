import 'package:flutter/material.dart';

class ImpactSectionBottom extends StatelessWidget {
  const ImpactSectionBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Impact Today',
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
