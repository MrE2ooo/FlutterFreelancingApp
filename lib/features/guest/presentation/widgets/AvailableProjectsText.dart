import 'package:flutter/material.dart';

class Availableprojectstext extends StatelessWidget {
  const Availableprojectstext({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Adjust alignment as needed
      children: [
        const Text(
          'Available Projects',
          style: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontSize: 16,
            height: 24 / 16,
            letterSpacing: 0.5,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF2563EB),
            minimumSize: const Size(100, 45), // Adjust size as needed
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {
            // Add your button press logic here
          },
          child: Row(
            mainAxisSize: MainAxisSize.min, // Use min to avoid stretching
            children: [
              Image.asset(
                'filter.png', // Path to your filter.png in assets
                width: 20, // Adjust size as needed
                height: 20,
              ),
              const SizedBox(width: 8), // Space between icon and text
              const Text(
                'Filter',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}