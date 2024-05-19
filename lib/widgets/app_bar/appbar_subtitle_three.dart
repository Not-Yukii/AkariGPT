import 'package:flutter/material.dart';
import '../../core/app_export.dart';
// ignore_for_file: must_be_immutable

class AppbarSubtitleThree extends StatelessWidget {
  AppbarSubtitleThree({Key? key, required this.text, this.margin, this.onTap})
    : super(
      key: key,
    );

  String text;
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
        child: Container(
          decoration: AppDecoration.outlineBlack,
          child: Text(
            text,
            style: CustomTextStyles.bodyMediumCustom_1.copyWith(
              color: appTheme.whiteA700,
            ),
          ),
        ),
      ),
    );
  }
}