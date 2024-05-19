import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_radio_button.dart'; 

// ignore_for_file: must_be_immutable

class Themeselection1ItemWidget extends StatelessWidget {
  Themeselection1ItemWidget({Key? key}) : super(key: key);

  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 54.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Utiliser un thème existant :",
                style: theme.textTheme.bodySmall,
              ),
              Container(
                height: 12.adaptSize,
                width: 12.adaptSize,
                margin: EdgeInsets.only(left: 10.h, top: 3.v, bottom: 2.v),
                decoration: BoxDecoration(
                  color: appTheme.indigo700,
                  borderRadius: BorderRadius.circular(6.h),
                  border: Border.all(
                    color: appTheme.blueGray100,
                    width: 4.h,
                    strokeAlign: BorderSide.strokeAlignOutside,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.h, top: 2.v),
          child: Text(
            "Blanc",
            style: CustomTextStyles.labelMediumCyan5001,
          ),
        ),
        SizedBox(height: 9.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 12.adaptSize,
              width: 12.adaptSize,
              decoration: BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(6.h),
                border: Border.all(
                  color: appTheme.blueGray100,
                  width: 4.h,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
              ),
            ),
            Text(
              "Eau",
              style: CustomTextStyles.labelMediumBlue20001,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  margin: EdgeInsets.only(bottom: 2.v),
                  decoration: BoxDecoration(
                    color: appTheme.gray100,
                    borderRadius: BorderRadius.circular(6.h),
                    border: Border.all(
                      color: appTheme.blueGray100,
                      width: 4.h,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "Feu",
                    style: CustomTextStyles.labelMediumOrange30002,
                  ),
                ),
                Container(
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  margin: EdgeInsets.only(left: 10.h, bottom: 2.v),
                  decoration: BoxDecoration(
                    color: appTheme.gray100,
                    borderRadius: BorderRadius.circular(6.h),
                    border: Border.all(
                      color: appTheme.blueGray100,
                      width: 4.h,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "Plante",
              style: CustomTextStyles.labelMediumGreen200,
            ),
            Container(
              height: 12.adaptSize,
              width: 12.adaptSize,
              decoration: BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(6.h),
                border: Border.all(
                  color: appTheme.blueGray100,
                  width: 4.h,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
              ),
            ),
            Text(
              "Roche",
              style: CustomTextStyles.labelMediumRed300,
            ),
            CustomRadioButton(
              text: "Foudre",
              value: "Foudre",
              groupValue: radioGroup,
              textStyle: CustomTextStyles.labelMediumYellowA20001,
              onChange: (value) {
                radioGroup = value;
              },
            ),
          ],
        ),
      ],
    );
  }
}
