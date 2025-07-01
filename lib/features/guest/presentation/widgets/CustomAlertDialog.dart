import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task4/core/constants/dimensions.dart';


class CustomAlertDialog extends StatelessWidget {
  final String alertMessage;

  const CustomAlertDialog({super.key, required this.alertMessage});

  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil with design size
    ScreenUtil.init(
      context,
      designSize: Size(Dimensions.designWidth, Dimensions.designHeight),
    );

    return AlertDialog(
      backgroundColor: const Color(0xff303030),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.alertDialogBorderRadius)),
      contentPadding:
          EdgeInsets.symmetric(vertical: Dimensions.alertDialogContentPaddingVertical),
      content: SizedBox(
        width: Dimensions.alertDialogWidth,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Dimensions.alertDialogTextPaddingHorizontal),
              child: Text(
                alertMessage,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Nunito',
                  fontSize: Dimensions.alertDialogTextFontSize,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: Dimensions.alertDialogSpacerHeight),
            Divider(
              color: const Color(0xFF161616),
              height: Dimensions.alertDialogDividerHeight,
              thickness: Dimensions.alertDialogDividerThickness,
              indent: 0,
              endIndent: 0,
            ),
            SizedBox(height: Dimensions.alertDialogSpacerHeight),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.alertDialogButtonRowPaddingHorizontal),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.alertDialogButtonPaddingHorizontal),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2563EB),
                          minimumSize: Size(0, Dimensions.alertDialogButtonHeight),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(Dimensions.alertDialogButtonBorderRadius),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop(true); // Return true on Sign Up
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w600,
                            fontSize: Dimensions.alertDialogButtonFontSize,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.alertDialogButtonPaddingHorizontal),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2563EB),
                          minimumSize: Size(0, Dimensions.alertDialogButtonHeight),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(Dimensions.alertDialogButtonBorderRadius),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop(false); // Return false on Cancel
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w600,
                            fontSize: Dimensions.alertDialogButtonFontSize,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}