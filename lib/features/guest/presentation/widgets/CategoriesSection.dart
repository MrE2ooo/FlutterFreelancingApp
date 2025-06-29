import 'package:flutter/material.dart';
import 'package:task4/features/guest/presentation/widgets/CategoriesListView.dart';
import 'package:task4/features/guest/presentation/widgets/CategoriesText.dart';
import 'package:task4/features/guest/presentation/widgets/FeaturedFreelancersListview.dart';
import 'package:task4/features/guest/presentation/widgets/FeaturedFreelancerstext.dart';
import 'package:task4/features/guest/presentation/widgets/RecommendedServicesText.dart';

class Categoriessection extends StatefulWidget {
  const Categoriessection({super.key});

  @override
  State<Categoriessection> createState() => _CategoriessectionState();
}

class _CategoriessectionState extends State<Categoriessection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoriesText(),
        SizedBox(height: 20),
        CategoriesListView(),
        SizedBox(height: 30),
        FeaturedFreelancersText(),
        SizedBox(height: 13),
        FeaturedFreelancersListView(),
        SizedBox(height: 29),
        Recommendedservicestext()

      ],
    );
  }
}
