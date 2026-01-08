import 'package:flutter/material.dart';

class XUserStats extends StatefulWidget {
  final String bloodType;
  final int donated;
  final int request;

  const XUserStats({
    super.key,
    required this.bloodType,
    required this.donated,
    required this.request,
  });

  @override
  State<XUserStats> createState() => _XUserStatsState();
}

class _XUserStatsState extends State<XUserStats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          _buildItem(widget.bloodType, 'Blood Type'),
          _buildDivider(),
          _buildItem(widget.donated.toString().padLeft(2, '0'), 'Donated'),
          _buildDivider(),
          _buildItem(widget.request.toString().padLeft(2, '0'), 'Request'),
        ],
      ),
    );
  }

  Widget _buildItem(String value, String label) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            value,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 6),
          Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(height: 40, width: 1, color: Colors.grey.shade300);
  }
}
