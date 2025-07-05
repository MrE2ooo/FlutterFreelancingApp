import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Availableprojectsalert extends StatelessWidget {
  const Availableprojectsalert({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 165,
      decoration: BoxDecoration(
        color: Color(0xff303030),
        borderRadius: BorderRadius.circular(8.0),
      ),

      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'hey!',
            style: TextStyle(
              color: Color(0xff2563EB),
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "You need an account to make this action",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF2563EB),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              minimumSize: Size(80, 50),
            ),
            onPressed: () {},
            child: Text(
              'Sign up',
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w300, 
                fontSize: 16.sp, // Responsive font size
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
