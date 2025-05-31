import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task4/core/constants/app_colors.dart';
import 'package:task4/core/constants/dimensions.dart';
import 'package:task4/core/constants/styles.dart';


class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: Size(Dimensions.designWidth, Dimensions.designHeight),
    );

    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.mediumPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Dimensions.signInTopPadding),

                // Email Label
                Text("Email", style: TextStyles.labelText),

                SizedBox(height: Dimensions.labelFieldSpacing),

                // Email Field
                Container(
                  decoration: InputDecorations.textFieldContainerDecoration,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecorations.textFieldDecoration.copyWith(
                      hintText: "Enter your email",
                    ),
                  ),
                ),

                SizedBox(height: Dimensions.fieldSpacing),

                // Password Label
                Text("Password", style: TextStyles.labelText),

                SizedBox(
                  height: Dimensions.smallPadding - 3.h,
                ), // 5px equivalent
                // Password Field
                Container(
                  decoration: InputDecorations.textFieldContainerDecoration,
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecorations.textFieldDecoration.copyWith(
                      hintText: "Enter your password",
                    ),
                  ),
                ),

                SizedBox(height: Dimensions.buttonSpacing),

                // Sign In Button
                SizedBox(
                  width: double.infinity,
                  height: Dimensions.primaryButtonHeight,
                  child: ElevatedButton(
                    style: InputDecorations.primaryButtonStyle,
                    onPressed: () {
                      // Handle sign-in action
                    },
                    child: Text("Continue", style: TextStyles.buttonText),
                  ),
                ),

                SizedBox(height: Dimensions.orSpacing),

                // "Or"
                Center(child: Text("Or", style: TextStyles.orText)),

                SizedBox(height: Dimensions.orSpacing),

                // Divider
                Divider(color: Color(0xFF4B5563), thickness: 1),

                SizedBox(height: Dimensions.dividerSpacing),

                // Google Sign-Up Button
                SizedBox(
                  width: double.infinity,
                  height: Dimensions.socialButtonHeight,
                  child: Container(
                    decoration: InputDecorations.socialButtonDecoration,
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.mediumPadding + 4.w,
                    ), // 20px
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('7.png', width: Dimensions.socialIconSize),
                        SizedBox(width: Dimensions.socialIconSpacing),
                        Text(
                          "Sign up with Google",
                          style: TextStyles.socialButtonText,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: Dimensions.socialButtonSpacing),

                // Facebook Sign-Up Button
                SizedBox(
                  width: double.infinity,
                  height: Dimensions.socialButtonHeight,
                  child: Container(
                    decoration: InputDecorations.socialButtonDecoration,
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.mediumPadding + 4.w,
                    ), // 20px
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.facebook, size: 17.w, color: Colors.white),
                        SizedBox(width: Dimensions.socialIconSpacing),
                        Text(
                          "Sign up with Facebook",
                          style: TextStyles.socialButtonText,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: Dimensions.signUpRowSpacing),

                // Sign-Up Row
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.mediumPadding,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Don't have a Freely account?",
                        style: TextStyles.signUpPromptText,
                      ),
                      SizedBox(width: 2),
                      GestureDetector(
                        onTap: () {
                          // Navigate to Sign-Up screen
                        },
                        child: Text("sign up", style: TextStyles.signUpText),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
