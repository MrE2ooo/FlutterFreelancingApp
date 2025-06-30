import 'package:flutter/material.dart';

class ServiceItem {
  final String imagePath;
  final String profileImagePath;
  final String name;
  final String serviceTitle;
  final double rating;
  final int reviewCount;
  final String price;

  ServiceItem({
    required this.imagePath,
    required this.profileImagePath,
    required this.name,
    required this.serviceTitle,
    required this.rating,
    required this.reviewCount,
    required this.price,
  });
}

class RecommendedServicesListView extends StatelessWidget {
  final List<ServiceItem> services = [
    ServiceItem(
      imagePath: "s1.png",
      profileImagePath: "jasmine.png",
      name: "Lina Ahmed",
      serviceTitle: "Design a logo for a shop",
      rating: 4.9,
      reviewCount: 120,
      price: "\$80",
    ),
    ServiceItem(
      imagePath: "s2.png",
      profileImagePath: "john.png",
      name: "Sarah Johnson",
      serviceTitle: "Create website mockup",
      rating: 4.8,
      reviewCount: 85,
      price: "\$120",
    ),
    
  ];

  RecommendedServicesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: services.length,
        itemBuilder: (context, index) {
          final service = services[index];
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ServiceCard(service: service),
          );
        },
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final ServiceItem service;

  const ServiceCard({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: 225,
      height: 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xff303030),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: Image.asset(service.imagePath),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Image.asset(service.profileImagePath, height: 27, width: 27),
              const SizedBox(width: 5),
              Text(
                service.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: "Nunito",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 3),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              service.serviceTitle,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: "Nunito",
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Left group
              Row(
                children: [
                  const Icon(Icons.star, color: Color(0xFFF8BD00), size: 15),
                  const SizedBox(width: 4),
                  Text(
                    service.rating.toString(),
                    style: const TextStyle(
                      color: Color(0xFFF8BD00),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '(${service.reviewCount})',
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
              // Right group
              Row(
                children: [
                  const Text(
                    'Starting at ',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Text(
                    service.price,
                    style: const TextStyle(
                      color: Color(0xFF319F43),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 13),
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
              'View',
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
    );
  }
}