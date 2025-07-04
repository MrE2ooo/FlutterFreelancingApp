import 'package:flutter/material.dart';
import 'package:task4/core/constants/app_colors.dart';
import 'package:task4/core/constants/dimensions.dart';

class CustomGuestAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomGuestAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF303030), // light-dark #303030
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Image.asset('freely.png'), // Image stays on the far left
          Expanded( // Takes up remaining space
            child: Align(
              alignment: Alignment.centerLeft, // Aligns button to left
              child: Padding(
                padding:Dimensions.customGuestAppBarPadding(context), // Adjust this value to move button left/right
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2563EB), // #2563EB
                    padding: const EdgeInsets.all(8.54),
                    minimumSize: const Size(60, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.83),
                    ),
                  ),
                  onPressed: () {
                    // Handle sign up button press
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400,
                      fontSize: 11.96,
                      height: 1.0,
                      letterSpacing: 0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class AsGuestView extends StatelessWidget {
  const AsGuestView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainBackground,
        appBar: const CustomGuestAppBar(),
        body: const Center(
          child: Text('Guest View Content'),
        ),
      ),
    );
  }
}