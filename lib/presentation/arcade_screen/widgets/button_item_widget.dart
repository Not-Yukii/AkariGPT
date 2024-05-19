import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
// ignore_for_file: must_be_immutable

class ButtonItemWidget extends StatelessWidget {
  ButtonItemWidget({Key? key, this.onTapButton})
      : super(
          key: key,
        );

  VoidCallback? onTapButton;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: GestureDetector(
          onTap: () {
            onTapButton?.call();
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 10.v,
            ),
            decoration: AppDecoration.gradientGreenToBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder30,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: AppDecoration.outlineBlack,
                  child: Text(
                    "Personnalisée",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 9.v),
                Container(
                  height: 150.adaptSize,
                  width: 150.adaptSize,
                  decoration: AppDecoration.outlineBlack,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgPencilCrayon,
                    height: 150.adaptSize,
                    width: 150.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 9.v)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
