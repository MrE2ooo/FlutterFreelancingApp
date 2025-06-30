import 'package:flutter/material.dart';
import 'package:task4/features/guest/presentation/widgets/CategoriesListView.dart';
import 'package:task4/features/guest/presentation/widgets/CategoriesText.dart';
import 'package:task4/features/guest/presentation/widgets/CustomSearchFormField.dart';
import 'package:task4/features/guest/presentation/widgets/FeaturedFreelancersListview.dart';
import 'package:task4/features/guest/presentation/widgets/FeaturedFreelancerstext.dart';
import 'package:task4/features/guest/presentation/widgets/RecommendedServicesListView.dart';
import 'package:task4/features/guest/presentation/widgets/RecommendedServicesText.dart';

class FeaturedFreelancersAndRecommendedServicesSection extends StatefulWidget {
  const FeaturedFreelancersAndRecommendedServicesSection({super.key});

  @override
  State<FeaturedFreelancersAndRecommendedServicesSection> createState() => _CategoriessectionState();
}

class _CategoriessectionState extends State<FeaturedFreelancersAndRecommendedServicesSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 31),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: CustomSearchFormField(),
        ),
        const SizedBox(height: 30),
        CategoriesText(),
        SizedBox(height: 20),
        CategoriesListView(),
        SizedBox(height: 30),
        FeaturedFreelancersText(),
        SizedBox(height: 13),
        FeaturedFreelancersListView(),
        SizedBox(height: 29),
        Recommendedservicestext(),
        SizedBox(height: 10),
        RecommendedServicesListView(),
        SizedBox(height: 29),
      ],
    );
  }
}
