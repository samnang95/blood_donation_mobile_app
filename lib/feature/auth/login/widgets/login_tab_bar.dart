import 'package:blood_donation_mobile_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class LoginTabBar extends StatefulWidget {
  const LoginTabBar({super.key});

  @override
  State<LoginTabBar> createState() => _LoginTabBarState();
}

class _LoginTabBarState extends State<LoginTabBar> {
  int selectedIndex = 0;

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
                  onTap: () => setState(() => selectedIndex = 0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: selectedIndex == 0
                            ? AppColors.backgroundColor
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: selectedIndex == 0
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
                  onTap: () => setState(() => selectedIndex = 1),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: selectedIndex == 1
                            ? AppColors.backgroundColor
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: selectedIndex == 1
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
