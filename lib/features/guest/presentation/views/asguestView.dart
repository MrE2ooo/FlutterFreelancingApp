import 'package:flutter/material.dart';
import 'package:task4/core/constants/app_colors.dart';
import 'package:task4/features/guest/presentation/widgets/CategoriesListView.dart';
import 'package:task4/features/guest/presentation/widgets/CategoriesText.dart';
import 'package:task4/features/guest/presentation/widgets/CustomSearchFormField.dart';
import 'package:task4/features/guest/presentation/widgets/FeaturedFreelancersListview.dart';
import 'package:task4/features/guest/presentation/widgets/FeaturedFreelancerstext.dart';
import 'package:task4/features/guest/presentation/widgets/customGuestAppBar.dart';

class AsGuestView extends StatelessWidget {
  const AsGuestView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainBackground,
        appBar: CustomGuestAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(height: 31),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: CustomSearchFormField(),
                ),
                SizedBox(height: 30),
                CategoriesText(),
                SizedBox(height: 20),
                CategoriesListView(),
                SizedBox(height: 30),
                FeaturedFreelancersText(),
                SizedBox(height: 13),
                FeaturedFreelancersListView()



              ],
            ),
          ),
        ),
      ),
    );
  }
}
