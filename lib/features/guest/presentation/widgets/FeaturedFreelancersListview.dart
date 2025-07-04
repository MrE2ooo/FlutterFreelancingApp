import 'package:flutter/material.dart';

class FeaturedFreelancersListView extends StatelessWidget {
  const FeaturedFreelancersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          FreelancerCard(
            name: "John Trod",
            title: "UI UX Designer",
            rating: "4.2/5", profile: "john.png",
          ),
          SizedBox(width: 10),
          FreelancerCard(
            name: "Sarah Lee",
            title: "Graphic Designer",
            rating: "4.5/5", profile: 'jasmine.png',
          ),
        ],
      ),
    );
  }
}

class FreelancerCard extends StatelessWidget {
  final String name;
  final String title;
  final String rating;
  final String profile;

  const FreelancerCard({
    super.key,
    required this.name,
    required this.title,
    required this.rating, required this.profile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 220,
      decoration: BoxDecoration(
        color: Color(0xff303030),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 15),
            Row(
              children: [
                SizedBox(width: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    profile,
                    width: 55,
                    height: 55,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Nunito",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Nunito",
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Image.asset("star.png"),
                        Text(
                          rating,
                          style: TextStyle(
                            color: Color(0xffF8BD00),
                            fontFamily: "Nunito",
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'john3.png',
                      width: 90,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 10),
                    Image.asset(
                      'john2.png',
                      width: 90,
                      height: 44,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Image.asset(
                  'john1.png',
                  width: 80,
                  height: 86,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            SizedBox(height: 4),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2563EB),
                minimumSize: const Size(double.infinity, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                // Add your button press logic here
              },
              child: const Text(
                'Sign up to view',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
