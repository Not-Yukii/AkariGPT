import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
    backgroundColor: appTheme.blueGray90001,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.h),
    ),
  );

  static ButtonStyle get fillBlueGrayTL14 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.blueGray800,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14.h),
    ),
  );

  static ButtonStyle get fillGreenA => ElevatedButton.styleFrom(
    backgroundColor: appTheme.greenA700,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14.h),
    ),
  );

  // Gradient button style
  static BoxDecoration get gradientBlueToBlueDecoration => BoxDecoration(
    borderRadius: BorderRadius.circular(14.h),
    border: Border.all(
      color: appTheme.blue70001,
      width: 1.h,
    ),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.blue800, appTheme.blue900],
    ),
  );

  static BoxDecoration get gradientLimeToYellowADecoration => BoxDecoration(
    borderRadius: BorderRadius.circular(10.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.lime500, appTheme.yellowA400],
    ),
  );

  static BoxDecoration get gradientOrangeAToDeepOrangeADecoration => BoxDecoration(
    borderRadius: BorderRadius.circular(14.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.orangeA200, appTheme.deepOrangeA200],
    ),
  );

  // Outline button style
  static ButtonStyle get outline => OutlinedButton.styleFrom(
    backgroundColor: appTheme.red50002,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14.h),
    ),
  );

  static ButtonStyle get outlineBlack => ElevatedButton.styleFrom(
    backgroundColor: appTheme.blueGray800,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.h),
    ),
    shadowColor: appTheme.black900.withOpacity(0.25),
    elevation: 4,
  );

  static ButtonStyle get outlineBlackTL11 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.blueGray800,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(11.h),
    ),
    shadowColor: appTheme.black900.withOpacity(0.25),
    elevation: 4,
  );

  static ButtonStyle get outlineDeepOrange => OutlinedButton.styleFrom(
    backgroundColor: appTheme.deepOrange90002,
    side: BorderSide(
      color: appTheme.deepOrange90001,
      width: 1,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14.h),
    ),
  );

  // Text button style
  static ButtonStyle get none => ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
    elevation: MaterialStateProperty.all<double>(0),
  );
}