
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dimensions {
  // Screen dimensions
  static double get designWidth => 360;
  static double get designHeight => 720;

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
}

