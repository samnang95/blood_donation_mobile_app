import 'package:blood_donation_mobile_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class LoginTabBar extends StatelessWidget {
  final int currentIndex;
  final Function(int)? onTabChanged; // Added callback for tab changes

  const LoginTabBar({super.key, required this.currentIndex, this.onTabChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    onTabChanged?.call(0); // Notify parent
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: currentIndex == 0
                            ? AppColors.backgroundColor
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: currentIndex == 0
                                ? Colors.blue[400]
                                : Colors.grey[700],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: InkWell(
                  onTap: () {
                    onTabChanged?.call(1); // Notify parent
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: currentIndex == 1
                            ? AppColors.backgroundColor
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: currentIndex == 1
                                ? Colors.blue[400]
                                : Colors.grey[700],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
