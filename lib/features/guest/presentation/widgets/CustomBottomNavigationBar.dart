import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  // List of image assets
  final List<String> _navItems = [
    'nb1.png',
    'nb2.png',
    'nb3.png',
    'nb4.png',
    'nb5.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      color: const Color(0xff222222),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(_navItems.length, (index) {
            return GestureDetector(
              onTap: () => onItemTapped(index),
              child: Container(
                padding: const EdgeInsets.all(8), // Optional: Adjust padding for better touch area
                child: Image.asset(
                  _navItems[index],
                  color: selectedIndex == index ? const Color(0xff2563EB) : null,
                  colorBlendMode: selectedIndex == index ? BlendMode.modulate : null,
                  width: 24, // Optional: Set consistent size
                  height: 24, // Optional: Set consistent size
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}