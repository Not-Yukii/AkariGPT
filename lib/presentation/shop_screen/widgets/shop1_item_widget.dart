import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class Shop1ItemWidget extends StatelessWidget {
  const Shop1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineBlack9002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: AppDecoration.outlineBlack,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Indice",
                    style: theme.textTheme.bodyLarge,
                  ),
                  TextSpan(
                    text: " ",
                  ),
                  TextSpan(
                    text: "x",
                    style: CustomTextStyles.titleLargePecita,
                  ),
                  TextSpan(
                    text: " 1",
                    style: CustomTextStyles.titleLargePatrickHand,
                  )
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 16.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 5.v),
                decoration: AppDecoration.outlineBlack,
                child: Text(
                  "100",
                  style: CustomTextStyles.titleLarge23,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgMonais234x34,
                height: 34.adaptSize,
                width: 34.adaptSize,
              )
            ],
          )
        ],
      ),
    );
  }
}
