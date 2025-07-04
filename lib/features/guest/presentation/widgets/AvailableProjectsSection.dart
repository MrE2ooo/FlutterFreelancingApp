import 'package:flutter/material.dart';
import 'package:task4/features/guest/presentation/widgets/AvailableProjectsText.dart';
import 'package:task4/features/guest/presentation/widgets/AvailbleProjectsListView.dart';
import 'package:task4/features/guest/presentation/widgets/CategoriesListView.dart';
import 'package:task4/features/guest/presentation/widgets/CategoriesText.dart';
import 'package:task4/features/guest/presentation/widgets/CustomSearchFormField.dart';

class Availableprojectssection extends StatelessWidget {
  const Availableprojectssection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Column(
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
          SizedBox(height: 16),
          Availableprojectstext(),
          SizedBox(height:12),
          Availbleprojectslistview()
        ],
      ),
    );
  }
}