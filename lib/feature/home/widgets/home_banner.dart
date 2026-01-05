import 'dart:async';

import 'package:flutter/material.dart';

class XBanner extends StatefulWidget {
  final List<String> imagePaths;
  final Duration delay;

  const XBanner({
    super.key,
    required this.imagePaths,
    this.delay = const Duration(seconds: 5),
  });

  @override
  State<XBanner> createState() => _XBannerState();
}

class _XBannerState extends State<XBanner> {
  int _currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startImageRotation();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startImageRotation() {
    _timer = Timer.periodic(widget.delay, (timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % widget.imagePaths.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(widget.imagePaths[_currentIndex]),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
