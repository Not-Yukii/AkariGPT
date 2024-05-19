import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "lightCode";
LightCodeColors get appTheme => ThemeHelper().getThemeColors();
ThemeData get theme => ThemeHelper().getThemeData();

/// Helper class for managing themes and colors.
/// ignore_for_file: must_be_immutable
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

  // A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData getThemeData() {
    var colorScheme = _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.black900,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.blue70001,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return appTheme.gray100;
          }
          return Colors.transparent;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: appTheme.gray10001,
      ),
      dividerTheme: DividerThemeData(
        thickness: 2,
        space: 2,
      ),
    );
  }
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
    bodyLarge: TextStyle(
      color: appTheme.whiteA700,
      fontSize: 16.fSize,
      fontFamily: 'Indie Flower',
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      color: appTheme.whiteA700,
      fontSize: 14.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      color: appTheme.whiteA700,
      fontSize: 12.fSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: TextStyle(
      color: appTheme.whiteA700,
      fontSize: 25.fSize,
      fontFamily: 'Pecita',
      fontWeight: FontWeight.w400,
    ),
    labelLarge: TextStyle(
      color: appTheme.whiteA700,
      fontSize: 12.fSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    ),
    labelMedium: TextStyle(
      color: appTheme.whiteA700,
      fontSize: 10.fSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
    ),
    titleLarge: TextStyle(
      color: appTheme.whiteA700,
      fontSize: 20.fSize,
      fontFamily: '?????',
      fontWeight: FontWeight.w400,
    ),
    titleSmall: TextStyle(
      color: appTheme.greenA70001,
      fontSize: 14.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
    ),
  );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light();
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Amber
  Color get amber400 => Color(0XFFFFCC18);
  Color get amber40001 => Color(0XFFFE3D19);
  Color get amber600 => Color(0XFFFFB700);
  // Black
  Color get black900 => Color(0XFF000000);
  // Blue
  Color get blue200 => Color(0XFF82C3FF);
  Color get blue20001 => Color(0XFF89C6FF);
  Color get blue400 => Color(0XFF3A7FF7);
  Color get blue700 => Color(0XFF3764D8);
  Color get blue70001 => Color(0XFF1A76CE);
  Color get blue800 => Color(0XFF1056BF);
  Color get blue900 => Color(0XFF0B3E8A);
  Color get blueA100 => Color(0XFF7D7BF7);
  // BlueE
  Color get blue900E5 => Color(0XE50032B4);
  // BlueAc
  Color get blueA4000c => Color(0XC176FF2);
  // BlueGray
  Color get blueGray100 => Color(0XFFD3D5E4);
  Color get blueGray10001 => Color(0XFFD9D9D9);
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray800 => Color(0XFF37855);
  Color get blueGray900 => Color(0XFF14234C);
  Color get blueGray90001 => Color(0XFFA2A3C);
  Color get blueGray90002 => Color(0XFF12546);
  Color get blueGray90003 => Color(0XFF121337);
  Color get blueGray90091 => Color(0X9131337);
  // CyanC
  Color get cyan400C6 => Color(0XC61ACE);
  Color get cyan400C601 => Color(0XC62A8AD3);
  // Cyan
  Color get cyan50 => Color(0XFFD1F6FF);
  Color get cyan5001 => Color(0XFFD2F7FF);
  Color get cyan800 => Color(0XFF1E759B);
  Color get cyan200 => Color(0XFF00FFE0);
  Color get cyan400 => Color(0XFF00D1FF);
  // DeepOrangeE
  Color get deepOrange800E5 => Color(0XE5C05E34);
  // DeepOrange
  Color get deepOrange900 => Color(0XFF45229);
  Color get deepOrange90001 => Color(0XFF94C02);
  Color get deepOrange90002 => Color(0XFF9A4617);
  Color get deepOrangeA200 => Color(0XFFFA5F3D);
  // DeepPurple
  Color get deepPurple400 => Color(0XFF7B6ABF);
  Color get deepPurple40001 => Color(0XFF7B69BF);
  Color get deepPurple700 => Color(0XFF341AD4);
  // DeepPurpleAC
  Color get deepPurpleA700C6 => Color(0XC64B00EB);
  // Gray
  Color get gray100 => Color(0XFFF2F3F7);
  Color get gray10001 => Color(0XFFF4F4F4);
  Color get gray400 => Color(0XFFC3C3C3);
  Color get gray40001 => Color(0XFFC4C4C4);
  Color get gray500 => Color(0XFFA8A8A8);
  Color get gray600 => Color(0XFF787878);
  Color get gray60001 => Color(0XFF6B6B6B);
  Color get gray60084 => Color(0X84818181);
  Color get gray700 => Color(0XFF666666);
  Color get gray900 => Color(0XFF191B23);
  Color get gray90001 => Color(0XFFD711);
  Color get gray90002 => Color(0XFF4110);
  Color get gray90003 => Color(0XFF121032B);
  Color get gray900A2 => Color(0X221A919);
  // Grayb
  Color get gray6002b => Color(0X2B7C7C7C);
  // GrayC
  Color get gray800C6 => Color(0XC66E3718);
  // GrayE
  Color get gray800E5 => Color(0XE5A2C18);
  // GrayEd
  Color get gray800Ed => Color(0XED434343);
  // GrayB
  Color get gray900B2 => Color(0XB2B1A2);
  // Green
  Color get green200 => Color(0XFF92F596);
  Color get green400 => Color(0XFF5DF963);
  Color get green40001 => Color(0XFF46FF58);
  Color get green500 => Color(0XFF43DF5);
  Color get green500A2 => Color(0XA2DF5B);
  Color get green600 => Color(0XFF5F8F8);
  Color get green800 => Color(0XFF266939);
  Color get green90001 => Color(0XFF12936);
  Color get greenA400 => Color(0XFF00D4E6);
  Color get greenA40001 => Color(0XFF00FF57);
  Color get greenA700 => Color(0XFF0B1D);
  Color get greenA70001 => Color(0XFF00F);
  Color get greenA70002 => Color(0XFF06B30);
  Color get greenA70003 => Color(0XFF1EAD68);
  // GreenE
  Color get green800E5 => Color(0XE500992A);
  // GreenAD
  Color get green400D8 => Color(0XD8F56);
  // GreenAE
  Color get greenA400E5 => Color(0XE500F47);
  // Indigo
  Color get indigo500 => Color(0XFF4963A6);
  Color get indigo50001 => Color(0XFF386C8);
  Color get indigo600 => Color(0XFF49C97);
  Color get indigo700 => Color(0XFF2151FF);
  Color get indigoA70001 => Color(0XFF64F5E3);
  // IndigoAC
  Color get indigoA700C6 => Color(0XC60B41FF);
  // LightBlue
  Color get lightBlue800 => Color(0XFF006D82);
  Color get lightBlueA700 => Color(0XFF003F);
  // LightGreen
  Color get lightGreen500 => Color(0XFF7D58);
  Color get lightGreenA200 => Color(0XFF4F53);
  Color get lightGreenA700 => Color(0XFF4B70);
  // Lime
  Color get lime500 => Color(0XFFAD148);
  Color get lime600 => Color(0XFFABE2);
  Color get lime60001 => Color(0XFFDFD8);
  Color get lime60002 => Color(0XFFDFE2);
  Color get lime700 => Color(0XFFBBB29);
  Color get lime70001 => Color(0XFFC1B3A);
  Color get lime900 => Color(0XFF74304);
  Color get lime90002 => Color(0XFF5C200);
  Color get limeA100 => Color(0XFFF7E7F7);
  Color get limeA200 => Color(0XFFF3F36);
  Color get limeA700 => Color(0XFF3C700);
  // LimeC
  Color get lime800C6 => Color(0XC6B6642);
  // Orange
  Color get orange300 => Color(0XFFFAF66);
  Color get orange30001 => Color(0XFFF5F4);
  Color get orange30002 => Color(0XFFFFA66);
  Color get orangeA200 => Color(0XFFFA9C3);
  Color get orangeA20001 => Color(0XFFFE9C3);
  // Pink
  Color get pink600 => Color(0XFFD314B);
  // RedE
  Color get red200E5 => Color(0XE5D9839);
  // Red
  Color get red300 => Color(0XFF77457);
  Color get red400 => Color(0XFFB3E5);
  Color get red500 => Color(0XFF6394);
  Color get red50001 => Color(0XFFA3131);
  Color get red50002 => Color(0XFFA355);
  Color get red600 => Color(0XFF8828);
  Color get red700 => Color(0XFF05D37);
  Color get red70001 => Color(0XFFA5C37);
  Color get red800 => Color(0XFF25239);
  Color get red80001 => Color(0XFF43129);
  Color get red900 => Color(0XFF418);
  Color get redA200 => Color(0XFFF695);
  Color get redA20002 => Color(0XFFF696);
  Color get redA20001 => Color(0XFF94D4);
  Color get redA20003 => Color(0XFFF4C);
  Color get redA700 => Color(0XFFB00);
  Color get redA70001 => Color(0XFF000F);
  Color get redA70002 => Color(0XFF00099);
  Color get redA70003 => Color(0XFFC03);
  Color get redA70004 => Color(0XFCF07);
  Color get redA70005 => Color(0XFF00);
  Color get redA70006 => Color(0XFF0000);
  Color get redA70007 => Color(0XFF00);
  // RedBf
  Color get red900Bf => Color(0XBF99000);
  // Teal
  Color get teal400 => Color(0XFF3B67F);
  Color get teal40001 => Color(0XFF2B08);
  Color get tealA400 => Color(0XFF3E8AD);
  Color get tealA40001 => Color(0XFF26F1F);
  // TealC
  Color get teal4000c => Color(0XC62EB1B);
  // TealC
  Color get teal700C6 => Color(0XC61B697B);
  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
  // Yellow
  Color get yellow300 => Color(0XFFF7D369);
  Color get yellow500 => Color(0XFFFFA29);
  Color get yellow700 => Color(0XFFF7C42D);
  Color get yellow900 => Color(0XFFD7D36);
  Color get yellowA200 => Color(0XFFFFF00);
  Color get yellowA20001 => Color(0XFFF9FF00);
  Color get yellowA400 => Color(0XFF8EC03);
  // YellowA
  Color get yellowA100A8 => Color(0XA8FDF85);
}