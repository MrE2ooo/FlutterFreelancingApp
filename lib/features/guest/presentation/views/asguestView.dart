import 'package:flutter/material.dart';
import 'package:task4/core/constants/app_colors.dart';
import 'package:task4/features/guest/presentation/widgets/AvailableProjectsSection.dart';
import 'package:task4/features/guest/presentation/widgets/CustomAlertDialog.dart';
import 'package:task4/features/guest/presentation/widgets/FeaturedFreelancersAndRecommendedServicesSection.dart';
import 'package:task4/features/guest/presentation/widgets/CustomBottomNavigationBar.dart';
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

    // Show alert dialog for specific indices
    String? alertMessage;
    switch (index) {
      case 2:
        alertMessage = "You need an account to post a project.";
        break;
      case 3:
        alertMessage = "Sign in to start chatting with freelancers.";
        break;
      case 4:
        alertMessage = "You need an account to make a profile.";
        break;
      default:
        alertMessage = null;
    }

    if (alertMessage != null) {
      showDialog<bool>(
        context: context,
        builder: (context) => CustomAlertDialog(alertMessage: alertMessage!),
      ).then((value) {
        if (value == true) {
          // Handle Sign Up action (e.g., navigate to sign-up screen)
          print('User pressed Sign Up for index $index');
        } else {
          // Handle Cancel action (e.g., revert to default index)
          setState(() {
            _selectedIndex = 0; // Revert to default index
          });
          print('User pressed Cancel for index $index');
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainBackground,
        appBar: _selectedIndex == 1 ? null : CustomGuestAppBar(),
        bottomNavigationBar: CustomBottomNavigationBar(
          selectedIndex: _selectedIndex,
          onItemTapped: _onNavItemTapped,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                if (_selectedIndex == 0) const FeaturedFreelancersAndRecommendedServicesSection(),
                if (_selectedIndex == 1) const Availableprojectssection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}