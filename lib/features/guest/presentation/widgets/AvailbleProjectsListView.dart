import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task4/core/constants/dimensions.dart';

class Availbleprojectslistview extends StatefulWidget {
  const Availbleprojectslistview({super.key});

  @override
  State<Availbleprojectslistview> createState() =>
      _AvailbleprojectslistviewState();
}

class _AvailbleprojectslistviewState extends State<Availbleprojectslistview> {
  // List to track favorite states for each project
  List<bool> isChecked = [false, false, false];

  // Project data
  final List<Map<String, dynamic>> projects = [
    {
      'title': 'Build a React Native App',
      'description': 'Looking for a mobile dev to build MVP in 2 weeks...',
      'postedBy': 'Rami A',
      'Timing': 'Fixed –',
      'pricing': ' \$15/hr',
      'pricingColor': Color(0xFF319F43),
      'delivery': 'Delivery in 10 days',
      'tags': ['new', '4 proposals'],
    },
    {
      'title': 'Develop a Web Dashboard',
      'description': 'Need a full-stack dev for admin dashboard...',
      'postedBy': 'Sarah K',
      'Timing': 'Fixed –',
      'pricing': ' \$500',
      'pricingColor': Color(0xFF319F43),
      'delivery': 'Delivery in 14 days',
      'tags': ['urgent', '2 proposals'],
    },
    {
      'title': 'Design a Mobile UI',
      'description': 'Seeking UI/UX designer for app prototype...',
      'postedBy': 'James L',
      'Timing': 'Fixed –',
      'pricing': ' \$25/hr',
      'pricingColor': Color(0xFF319F43),
      'delivery': 'Delivery in 7 days',
      'tags': ['new', '6 proposals'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          projects.asMap().entries.map((entry) {
            int index = entry.key;
            var project = entry.value;
            return ProjectItem(
              title: project['title'],
              description: project['description'],
              postedBy: project['postedBy'],
              Timing: project['Timing'],
              pricing: project['pricing'],
              pricingColor: project['pricingColor'],
              delivery: project['delivery'],
              tags: project['tags'],
              isChecked: isChecked[index],
              onFavoriteTap: () {
                setState(() {
                  isChecked[index] = !isChecked[index];
                });
              },
            );
          }).toList(),
    );
  }
}

class ProjectItem extends StatelessWidget {
  final String title;
  final String description;
  final String postedBy;
  final String Timing;
  final String pricing;
  final Color pricingColor;
  final String delivery;
  final List<String> tags;
  final bool isChecked;
  final VoidCallback onFavoriteTap;

  const ProjectItem({
    super.key,
    required this.title,
    required this.description,
    required this.postedBy,
    required this.pricing,
    required this.pricingColor,
    required this.delivery,
    required this.tags,
    required this.isChecked,
    required this.onFavoriteTap, required this.Timing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h, // Use .h for responsive height
      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: const Color(0xff303030),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(14.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 16.sp,
                  ),
                ),
                GestureDetector(
                  onTap: onFavoriteTap,
                  child: Image.asset(
                    isChecked ? 'redfavourite.png' : 'favourite.png',
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Text(
              description,
              style: TextStyle(
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w600,
                fontSize: 12.2.sp,
                color: Color(0xFFB3B3B3),
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            SizedBox(height: 10.h),
            Text(
              'Posted by: $postedBy',
              style: TextStyle(
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Timing,
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                    fontSize: 12.2.sp,
                    color: Colors.white,
                  ),
                ),
                Text(
                  pricing,
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                    fontSize: 12.2.sp,
                    color: pricingColor,
                  ),
                ),
                Padding(
                  padding:
                      Dimensions
                          .projectItemDeliveryPadding, // Use responsive padding
                  child: Text(
                    delivery,
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      fontSize: 12.2.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 14.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ...tags.map(
                  (tag) => Padding(
                    padding: EdgeInsets.only(right: 5.w),
                    child: Container(
                      height: 15.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        color: const Color(0xff319F43),
                      ),
                      child: Center(
                        child: Text(
                          tag,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Nunito',
                            fontSize: 11.5.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2563EB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    minimumSize:
                        Dimensions.projectItemButtonSize, // Use responsive size
                  ),
                  onPressed: () {},
                  child: Text(
                    'view',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
