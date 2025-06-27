import 'package:flutter/material.dart';

class CustomSearchFormField extends StatelessWidget {
  const CustomSearchFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xFF303030),
        borderRadius: BorderRadius.circular(10), 
      ),
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Center(
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Search freelancers, services, or categories',
            hintStyle: const TextStyle(
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
              fontSize: 13,
              color: Color(0xFFCAC4D0),
              height: 1.5,
              letterSpacing: 0.25,
            ),
            border: InputBorder.none,
            suffixIcon: Padding(
              padding: const EdgeInsets.only(left: 40, right: 8.0), // Added left padding
              child: Image.asset('search.png'),
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
            isDense: true,
            hintMaxLines: 1, // Ensure single line
            suffixIconConstraints: const BoxConstraints(
              minWidth: 24, // Minimum width for icon
              minHeight: 24, // Minimum height for icon
            ),
          ),
          style: const TextStyle(
            color: Colors.white,
            overflow: TextOverflow.ellipsis, // Add ellipsis when text overflows
          ),
          maxLines: 1, // Force single line
          textAlignVertical: TextAlignVertical.center,
        ),
      ),
    );
  }
}

class SearchExample extends StatelessWidget {
  const SearchExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: CustomSearchFormField(),
    );
  }
}