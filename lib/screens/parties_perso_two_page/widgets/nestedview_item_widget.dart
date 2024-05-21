import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class NestedviewItemWidget extends StatelessWidget {
  const NestedviewItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 12.adaptSize,
          width: 12.adaptSize,
          decoration: BoxDecoration(
            color: appTheme.gray100,
            borderRadius: BorderRadius.circular(
              6.h,
            ),
            border: Border.all(
              color: appTheme.blueGray100,
              width: 4.h,
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
          ),
        ),
        Text(
          "Biaxial",
          style: theme.textTheme.labelMedium,
        ),
        Container(
          height: 12.adaptSize,
          width: 12.adaptSize,
          decoration: BoxDecoration(
            color: appTheme.gray100,
            borderRadius: BorderRadius.circular(
              6.h,
            ),
            border: Border.all(
              color: appTheme.blueGray100,
              width: 4.h,
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
          ),
        ),
        Text(
          "Central",
          style: theme.textTheme.labelMedium,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 12.adaptSize,
              width: 12.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 1.v),
              decoration: BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(
                  6.h,
                ),
                border: Border.all(
                  color: appTheme.blueGray100,
                  width: 4.h,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 9.h),
              child: Text(
                "Vertical",
                style: theme.textTheme.labelMedium,
              ),
            ),
            Container(
              height: 12.adaptSize,
              width: 12.adaptSize,
              margin: EdgeInsets.only(
                left: 9.h,
                top: 1.v,
                bottom: 1.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(
                  6.h,
                ),
                border: Border.all(
                  color: appTheme.blueGray100,
                  width: 4.h,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
              ),
            )
          ],
        ),
        Text(
          "Horizontal",
          style: theme.textTheme.labelMedium,
        )
      ],
    );
  }
}
