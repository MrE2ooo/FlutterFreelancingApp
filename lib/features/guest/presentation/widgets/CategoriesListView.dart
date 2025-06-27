import 'package:flutter/material.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> categories = [
      {'image': 'Design.png', 'text': 'Design'},
      {'image': 'Development.png', 'text': 'Development'},
      {'image': 'Writing.png', 'text': 'Writing'},
    ];

    return SizedBox(
      height: 90, // Adjust height to accommodate square items
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              width: 120, // Square width
              height: 100, // Square height
              decoration: BoxDecoration(
                color: const Color(0xFF303030), // Background color #303030
                borderRadius: BorderRadius.circular(8.0), // Optional: slight border radius
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image at the top
                  Image.asset(
                    '${categories[index]['image']}',
                    width: 30,
                    height: 30,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 15), // Spacing between image and text
                  
                  
                    
                     Text(
                      categories[index]['text']!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w300, // Closest to 352
                        fontSize: 14.05,
                        height: 25.95 / 14.05, // Line height / font size
                        letterSpacing: 0.54,
                        color: Colors.white,
                      ),
                    ),
                  
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}