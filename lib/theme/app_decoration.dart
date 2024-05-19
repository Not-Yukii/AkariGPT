import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
    color: appTheme.blueGray800,
  );
  static BoxDecoration get fillBluegray90001 => BoxDecoration(
    color: appTheme.blueGray90001,
  );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
    color: appTheme.deepOrange90002,
  );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
    color: appTheme.deepPurple700,
  );
  static BoxDecoration get fillDeepPurpleAC => BoxDecoration(
    color: appTheme.deepPurpleA700C6,
  );
  static BoxDecoration get fillGreenA => BoxDecoration(
    color: appTheme.greenA70003,
  );
  static BoxDecoration get fillGreenA700 => BoxDecoration(
    color: appTheme.greenA700,
  );
  static BoxDecoration get fillRed => BoxDecoration(
    color: appTheme.red800,
  );
  static BoxDecoration get fillRedE => BoxDecoration(
    color: appTheme.red200E5,
  );
  static BoxDecoration get fillTeal => BoxDecoration(
    color: appTheme.tealA400,
  );
  static BoxDecoration get fillTealA => BoxDecoration(
    color: appTheme.tealA400,
  );
  static BoxDecoration get fillWhiteA => BoxDecoration(
    color: appTheme.whiteA700,
  );

  // Gradient decorations
  static BoxDecoration get gradientBlueEToCyanA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.blue900E5, appTheme.cyan200],
    ),
  );
  static BoxDecoration get gradientBlueToBlue => BoxDecoration(
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
  static BoxDecoration get gradientBlueToBlueGray => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        appTheme.blue20001,
        appTheme.indigo500,
        appTheme.blueGray800,
      ],
    ),
  );
  static BoxDecoration get gradientBlueToIndigo => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.blue20001, appTheme.indigo500],
    ),
  );
  static BoxDecoration get gradientCyanACToDeepPurple => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0.5),
      end: Alignment(1, 0.5),
      colors: [appTheme.cyan400C6, appTheme.deepPurple40001],
    ),
  );
  static BoxDecoration get gradientCyanCToTealC => BoxDecoration(
    border: Border.all(
      color: appTheme.cyan800,
      width: 1.h,
    ),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.cyan400C6, appTheme.teal700C6],
    ),
  );
  static BoxDecoration get gradientDeepOrangeEToGrayE => BoxDecoration(
    border: Border.all(
      color: appTheme.lime60001,
      width: 1.h,
    ),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.deepOrange800E5, appTheme.gray800E5],
    ),
  );
  static BoxDecoration get gradientGrayAToRed => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.gray900A2.withOpacity(0.7), appTheme.red70001],
    ),
  );
  static BoxDecoration get gradientGrayToBlueGray => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.gray900, appTheme.blueGray900],
    ),
  );
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0.5),
      end: Alignment(0.5, 1),
      colors: [
        appTheme.gray100,
        appTheme.gray90001,
        appTheme.gray90003,
      ],
    ),
  );
  static BoxDecoration get gradientGrayToGray60001 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        appTheme.gray90001,
        appTheme.blueGray90001,
        appTheme.gray60001.withOpacity(0.57),
      ],
    ),
  );
  static BoxDecoration get gradientGrayToGrayB => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        appTheme.gray90002.withOpacity(0.17),
        appTheme.gray6002b,
      ],
    ),
  );
  static BoxDecoration get gradientGrayToRed => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.gray90001, appTheme.red300.withOpacity(0.55)],
    ),
  );
  static BoxDecoration get gradientGreenAEToGreenE => BoxDecoration(
    border: Border.all(
      color: appTheme.lightGreenA700,
      width: 1.h,
    ),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.greenA400E5, appTheme.green800E5],
    ),
  );
  static BoxDecoration get gradientGreenAToGreen => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        appTheme.greenA40001.withOpacity(0.85),
        appTheme.green500.withOpacity(0.55),
      ],
    ),
  );
  static BoxDecoration get gradientGreenAToGreenAD => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        appTheme.green500A2.withOpacity(0.55),
        appTheme.green400D8,
      ],
    ),
  );
  static BoxDecoration get gradientGreenToBlueGray => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        appTheme.green200,
        appTheme.green800,
        appTheme.blueGray800,
      ],
    ),
  );
  static BoxDecoration get gradientGreenToGreen => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.green200, appTheme.green800],
    ),
  );
  static BoxDecoration get gradientIndigoACToCyanC => BoxDecoration(
    border: Border.all(
      color: appTheme.lightBlue800,
      width: 1.h,
    ),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.indigoA700C6, appTheme.cyan400C601],
    ),
  );
  static BoxDecoration get gradientLightGreenAToGreen => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.lightGreenA200, appTheme.green800E5],
    ),
  );
  static BoxDecoration get gradientLightGreenToTealA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0.5),
      end: Alignment(1, 0.5),
      colors: [
        appTheme.lightGreen500,
        appTheme.green400,
        appTheme.tealA40001,
      ],
    ),
  );
  static BoxDecoration get gradientLimeAToLime => BoxDecoration(
    border: Border.all(
      color: appTheme.lime60002,
      width: 1.h,
    ),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.limeA200, appTheme.lime700],
    ),
  );
  static BoxDecoration get gradientLimeCToGrayC => BoxDecoration(
    border: Border.all(
      color: appTheme.lime90002,
      width: 1.h,
    ),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.lime800C6, appTheme.gray800C6],
    ),
  );
  static BoxDecoration get gradientOrangeAToDeepOrangeA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.orangeA200, appTheme.deepOrangeA200],
    ),
  );
  static BoxDecoration get gradientOrangeToBlueGray => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        appTheme.orange30002,
        appTheme.deepOrange900,
        appTheme.blueGray800,
      ],
    ),
  );
  static BoxDecoration get gradientOrangeToRed => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.orange30002, appTheme.red80001],
    ),
  );
  static BoxDecoration get gradientOrangeToRedA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.orange300.withOpacity(0.55), appTheme.redA70001],
    ),
  );
  static BoxDecoration get gradientRedAToOrange => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.redA70001, appTheme.orange300.withOpacity(0.55)],
    ),
  );
  static BoxDecoration get gradientRedToRed => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0.5),
      end: Alignment(1, 0.5),
      colors: [appTheme.redA70002, appTheme.orange300.withOpacity(0.55)],
    ),
  );
  static BoxDecoration get gradientRedToRedBf => BoxDecoration(
    border: Border.all(
      color: appTheme.red900,
      width: 1.h,
    ),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        appTheme.redA70005.withOpacity(0.75),
        appTheme.red900Bf,
      ],
    ),
  );
  static BoxDecoration get gradientRedToGrayB => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.red700, appTheme.gray900B2],
    ),
  );
  static BoxDecoration get gradientRedToRedA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0.5),
      end: Alignment(1, 0.5),
      colors: [appTheme.red600, appTheme.redA70001],
    ),
  );
  static BoxDecoration get gradientYellowAAToYellowA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        appTheme.yellowA100A8.withOpacity(0.7),
        appTheme.yellowA20001,
      ],
    ),
  );
  static BoxDecoration get gradientYellowAAToYellowA20001 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        appTheme.yellowA100A8,
        appTheme.yellowA20001,
      ],
    ),
  );
  static BoxDecoration get gradientYellowAToYellowAA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        appTheme.yellowA20001,
        appTheme.yellowA100A8.withOpacity(0.7),
      ],
    ),
  );
  static BoxDecoration get gradientYellowToYellow => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0.5),
      end: Alignment(1, 0.5),
      colors: [
        appTheme.yellow700,
        appTheme.amber40001,
        appTheme.yellow500,
      ],
    ),
  );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration(
    color: appTheme.gray90001,
  );
  static BoxDecoration get outlineBlack => BoxDecoration();
  static BoxDecoration get outlineBlack900 => BoxDecoration(
    color: appTheme.blueGray800,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withOpacity(0.25),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(
          0,
          4,
        ),
      ),
    ],
  );
  static BoxDecoration get outlineBlack9001 => BoxDecoration(
    color: appTheme.blue400,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withOpacity(0.25),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(
          0,
          4,
        ),
      ),
    ],
  );
  static BoxDecoration get outlineBlack9002 => BoxDecoration(
    color: appTheme.orangeA20001,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withOpacity(0.25),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(
          0,
          4,
        ),
      ),
    ],
  );
  static BoxDecoration get outlineBlack9003 => BoxDecoration(
    color: appTheme.red400,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withOpacity(0.25),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(
          0,
          4,
        ),
      ),
    ],
  );
  static BoxDecoration get outlineBlack9004 => BoxDecoration(
    color: appTheme.teal400,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withOpacity(0.25),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(
          0,
          4,
        ),
      ),
    ],
  );
  static BoxDecoration get outlineBlue => BoxDecoration(
    color: appTheme.blueA100,
    border: Border.all(
      color: appTheme.blue700,
      width: 1.h,
    ),
  );
  static BoxDecoration get outlineGray => BoxDecoration(
    color: appTheme.blueGray800.withOpacity(0.4),
    border: Border.all(
      color: appTheme.gray400,
      width: 1.h,
    ),
  );
  static BoxDecoration get outlineGray400 => BoxDecoration(
    color: appTheme.blueGray800.withOpacity(0.6),
    border: Border.all(
      color: appTheme.gray400,
      width: 1.h,
    ),
  );
  static BoxDecoration get outline1 => BoxDecoration(
    color: appTheme.red50002,
  );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder18 => BorderRadius.circular(
    18.h,
  );
  
  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
    10.h,
  );
  static BorderRadius get roundedBorder14 => BorderRadius.circular(
    14.h,
  );
  static BorderRadius get roundedBorder3 => BorderRadius.circular(
    3.h,
  );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
    30.h,
  );
  static BorderRadius get roundedBorder7 => BorderRadius.circular(
    7.h,
  );
}
