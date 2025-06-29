import 'package:flutter/material.dart';

class Recommendedservicestext extends StatelessWidget {
  const Recommendedservicestext({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Recommended Services',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700, 
                      color: Colors.white,
                      fontSize: 16,
                      height:
                          24 / 16, 
                      letterSpacing: 0.5,
                      
                    ),
                  ),
                );;
  }
}