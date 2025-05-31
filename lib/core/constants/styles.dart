import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task4/core/constants/app_colors.dart';
import 'package:task4/core/constants/dimensions.dart';



class TextStyles {
  static TextStyle get labelText => TextStyle(
        fontFamily: 'Nunito',
        fontWeight: FontWeight.w400,
        fontSize: 15.64.sp,
        color: AppColors.white,
      );
  
  static TextStyle get hintText => TextStyle(
        color: AppColors.grey,
      );
  
  static TextStyle get buttonText => TextStyle(
        color: AppColors.white,
        fontSize: 16.sp,
      );
  
  static TextStyle get socialButtonText => TextStyle(
        fontFamily: 'Nunito',
        fontWeight: FontWeight.w400,
        fontSize: 15.sp,
        color: AppColors.white,
      );
  
  static TextStyle get orText => TextStyle(
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
        color: AppColors.white.withOpacity(0.72),
      );
  
  static TextStyle get signUpPromptText => TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 15.sp,
        color: AppColors.white,
      );
  
  static TextStyle get signUpText => TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 15.sp,
        color: AppColors.primary,
      );
  
  // Entry Screen specific
  static TextStyle get roleSwitchText => TextStyle(
        fontFamily: 'Nunito',
        fontWeight: FontWeight.w700,
        fontSize: 16.sp,
        height: 1.0,
        letterSpacing: 0,
        color: AppColors.white,
      );
  
  static TextStyle get skipSignInText => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.primary,
      );
}

class InputDecorations {
  static InputDecoration get textFieldDecoration => InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.all(10.w),
        hintStyle: TextStyles.hintText,
      );
  
  static BoxDecoration get textFieldContainerDecoration => BoxDecoration(
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(Dimensions.textFieldBorderRadius),
        color: AppColors.transparent,
      );
  
  static BoxDecoration get socialButtonDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.socialButtonBorderRadius),
        border: Border.all(width: 1, color: AppColors.primary),
        color: AppColors.transparent,
      );
  
  static ButtonStyle get primaryButtonStyle => ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.buttonBorderRadius),
        ),
        minimumSize: Size(double.infinity, Dimensions.primaryButtonHeight),
      );
}