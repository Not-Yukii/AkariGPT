import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class ShopItemWidget extends StatelessWidget {
  const ShopItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: AppDecoration.outlineBlack,
            child: Text(
              "Sac de Bulbies",
              style: CustomTextStyles.bodyMediumIndieFlower,
            ),
          ),
          SizedBox(height: 5.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 5.v),
                decoration: AppDecoration.outlineBlack,
                child: Text(
                  "150",
                  style: CustomTextStyles.titleLarge23,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgMonais234x34,
                height: 34.adaptSize,
                width: 34.adaptSize,
              )
            ],
          ),
          SizedBox(height: 5.v),
          Container(
            decoration: AppDecoration.outlineBlack,
            child: Text(
              "1.19€",
              style: CustomTextStyles.bodyLargeCustom,
            ),
          )
        ],
      ),
    );
  }
}
