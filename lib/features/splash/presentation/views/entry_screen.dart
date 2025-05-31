import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task4/core/constants/app_colors.dart';
import 'package:task4/core/constants/dimensions.dart';
import 'package:task4/core/constants/styles.dart';
import 'package:task4/features/splash/presentation/views/sign_in_screen.dart';


class EntryScreen extends StatelessWidget {
  const EntryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));

    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: Dimensions.entryTopPadding), 
                Image.asset('4.png'),

                SizedBox(height: Dimensions.entrySkipSignInPadding), 
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.entryHorizontalPadding1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Skip",
                        style: TextStyles.skipSignInText,  
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SignInScreen()),
                          );
                        },
                        child: Text(
                          "Sign in",
                          style: TextStyles.skipSignInText,  
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: Dimensions.entryImageRowPadding), 
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.entryHorizontalPadding2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: Image.asset('5.png')),
                      SizedBox(width: Dimensions.entryImageSpacing), 
                      Expanded(child: Image.asset('6.png')),
                    ],
                  ),
                ),

                SizedBox(height: Dimensions.entryTextPadding),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.entryHorizontalPadding3),
                  child: Text(
                    "You can switch your role later from settings.".toLowerCase(),
                    style: TextStyles.roleSwitchText,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.visible,
                    maxLines: 1,
                  ),
                ),

                SizedBox(height: Dimensions.entryBottomPadding), 
              ],
            ),
          ),
        ),
      ),
    );
  }
}