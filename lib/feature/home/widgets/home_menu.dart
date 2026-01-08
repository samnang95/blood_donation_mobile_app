import 'package:blood_donation_mobile_app/core/constants/app_colors.dart';
import 'package:blood_donation_mobile_app/core/constants/app_images.dart';
import 'package:flutter/material.dart';

class HomeMenu extends StatefulWidget {
  final VoidCallback? onFindDonorsTap;
  final VoidCallback? onRequestBloodTap;
  final VoidCallback? onReportTap;

  const HomeMenu({
    super.key,
    this.onFindDonorsTap,
    this.onRequestBloodTap,
    this.onReportTap,
  });

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  late final PageController _controller;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(viewportFraction: 0.34);

    _controller.addListener(() {
      final page = _controller.page?.round() ?? 0;
      if (_currentPage != page) {
        setState(() => _currentPage = page);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              padEnds: false,
              children: [
                _menuItem(
                  icon: AppImages.search,
                  title: "Find Donors",
                  onTap: widget.onFindDonorsTap,
                ),
                _menuItem(
                  icon: AppImages.heart,
                  title: "Request Blood",
                  onTap: widget.onRequestBloodTap,
                ),
                _menuItem(
                  icon: AppImages.report,
                  title: "Report",
                  onTap: widget.onReportTap,
                ),
                _menuItem(
                  icon: AppImages.report,
                  title: "Report",
                  onTap: widget.onReportTap,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4 - 1, (index) {
              final isActive = index == _currentPage;
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                width: isActive
                    ? 32
                    : 8, // Active is wider (32px), others are 8px
                height: 8,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  color: index <= _currentPage
                      ? AppColors.blue500
                      : Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(4),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _menuItem({
    required String icon,
    required String title,
    VoidCallback? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            color: AppColors.backgroundColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: AppColors.grey600.withOpacity(0.07), // shadow color
                blurRadius: 1, // softness
                spreadRadius: 0.5, // size
                offset: const Offset(0, 4), // position (x, y)
              ),
            ],
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(icon),
              const SizedBox(height: 8),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
