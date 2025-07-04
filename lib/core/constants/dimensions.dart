
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dimensions {
  // Screen dimensions
  static double get designWidth => 412;
  static double get designHeight => 915;

  // Common dimensions
  static double get smallPadding => 8.w;
  static double get mediumPadding => 16.w;
  static double get largePadding => 20.w;
  static double get extraLargePadding => 40.w;

  // Splash Screen dimensions
  static double get splashTopImagePadding => 0.1.sh;
  static double get splashMiddleImagePadding => 0.15.sh;
  static double get splashBottomImagePadding => 0.35.sh;
  static double get splashLastPadding => 0.07.sh;
  
  // Entry Screen dimensions
  static double get entryTopPadding => 0.38.sh;
  static double get entrySkipSignInPadding => 0.06.sh;
  static double get entryImageRowPadding => 0.03.sh;
  static double get entryTextPadding => 0.04.sh;
  static double get entryBottomPadding => 0.2.sh;
  static double get entryHorizontalPadding1 => 0.15.sw;
  static double get entryHorizontalPadding2 => 0.1.sw;
  static double get entryHorizontalPadding3 => 0.06.sw;
  static double get entryImageSpacing => 0.07.sw;
  
  // Sign In Screen dimensions
  static double get signInTopPadding => 0.12.sh;
  static double get labelFieldSpacing => 8.h;
  static double get fieldSpacing => 11.h;
  static double get buttonSpacing => 12.h;
  static double get orSpacing => 10.h;
  static double get dividerSpacing => 20.h;
  static double get socialButtonSpacing => 40.h;
  static double get signUpRowSpacing => 19.h;
  
  static double get textFieldBorderRadius => 5.r;
  static double get buttonBorderRadius => 5.22.r;
  static double get socialButtonBorderRadius => 5.13.r;
  static double get socialButtonHeight => 49.h;
  static double get primaryButtonHeight => 46.h;
  static double get socialIconSize => 24.w;
  static double get socialIconSpacing => 10.w;

    // CustomAlertDialog dimensions
  static double get alertDialogWidth => 270.w;
  static double get alertDialogBorderRadius => 12.w;
  static double get alertDialogContentPaddingVertical => 20.h;
  static double get alertDialogTextPaddingHorizontal => 55.w;
  static double get alertDialogTextFontSize => 16.sp;
  static double get alertDialogDividerHeight => 20.h;
  static double get alertDialogDividerThickness => 2.w;
  static double get alertDialogSpacerHeight => 12.h;
  static double get alertDialogButtonRowPaddingHorizontal => 20.w;
  static double get alertDialogButtonPaddingHorizontal => 8.w;
  static double get alertDialogButtonHeight => 50.h;
  static double get alertDialogButtonBorderRadius => 8.w;
  static double get alertDialogButtonFontSize => 14.sp;

// CustomGuestAppBar Dimensions
  static EdgeInsets customGuestAppBarPadding(BuildContext context) {
    // Get the actual screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Calculate padding as a proportion of screen width relative to design width
    double basePadding = 185.w; // Base padding for design width
    double adaptivePadding = (screenWidth / designWidth) * basePadding;

    // Ensure padding doesn't go below a minimum threshold for very narrow screens
    double minPadding = 130.w;
    double finalPadding = adaptivePadding < minPadding ? minPadding : adaptivePadding;

    return EdgeInsets.only(left: finalPadding);
  }

  // Availbleprojectslistview Dimensions
  static Size get projectItemButtonSize {
    // Check if screen width is narrower than the design width
    return ScreenUtil().screenWidth < designWidth
        ? Size(95.w, 35.h) // Narrower screen (e.g., Galaxy Z Flip)
        : Size(115.w, 35.h); // Default (e.g., Pixel 7)
  }

  static EdgeInsets get projectItemDeliveryPadding {
    // Check if screen width is narrower than the design width
    return ScreenUtil().screenWidth < designWidth
        ? EdgeInsets.only(right: 40.w) // Narrower screen (e.g., Galaxy Z Flip)
        : EdgeInsets.only(right: 60.w); // Default (e.g., Pixel 7)
  }

  

}

