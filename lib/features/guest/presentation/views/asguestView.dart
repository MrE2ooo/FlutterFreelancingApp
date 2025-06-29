import 'package:flutter/material.dart';
import 'package:task4/core/constants/app_colors.dart';

import 'package:task4/features/guest/presentation/widgets/CategoriesSection.dart';
import 'package:task4/features/guest/presentation/widgets/CustomBottomNavigationBar.dart';
import 'package:task4/features/guest/presentation/widgets/CustomSearchFormField.dart';

import 'package:task4/features/guest/presentation/widgets/customGuestAppBar.dart';

class AsGuestView extends StatefulWidget {
  const AsGuestView({super.key});

  @override
  AsGuestViewState createState() => AsGuestViewState();
}

class AsGuestViewState extends State<AsGuestView> {
  int _selectedIndex = 0; // Default selected index for nb1.png

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainBackground,
        appBar: CustomGuestAppBar(),
        bottomNavigationBar: CustomBottomNavigationBar(
          selectedIndex: _selectedIndex,
          onItemTapped: _onNavItemTapped,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const SizedBox(height: 31),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: CustomSearchFormField(),
                ),
                const SizedBox(height: 30),
                if (_selectedIndex == 0) const Categoriessection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}