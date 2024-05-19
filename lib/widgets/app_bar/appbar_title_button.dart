import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../custom_elevated_button.dart';
// ignore_for_file: must_be_immutable

class AppbarTitleButton extends StatelessWidget {
  AppbarTitleButton({Key? key, this.margin, this.onTap})
    : super(
      key: key,
    );

  EdgeInsetsGeometry? margin;
  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomElevatedButton(
          height: 36.v,
          width: 135.h,
          text: "Steve",
          leftIcon: Container(
            child: CustomImageView(
              imagePath: ImageConstant.imgEllipse7,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          buttonStyle: CustomButtonStyles.fillBlueGray,
        ),
      ),
    );
  }
}