import 'package:flutter/material.dart';
import '../../core/app_export.dart';
// ignore_for_file: must_be_immutable

class AppbarImage extends StatelessWidget {
  AppbarImage({Key? key, this.imagePath, this.margin, this.onTap})
      : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath!,
          height: 20.adaptSize,
          width: 20.adaptSize,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
