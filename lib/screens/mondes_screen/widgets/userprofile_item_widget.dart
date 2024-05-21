import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
// ignore_for_file: must_be_immutable

class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget({Key? key, this.onTapUserprofile})
      : super(
          key: key,
        );

  VoidCallback? onTapUserprofile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUserprofile?.call();
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.circleBorder18,
        ),
        child: Container(
          height: 107.v,
          width: 325.h,
          decoration: AppDecoration.gradientOrangeToRed.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder18,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgDecoFeu,
                height: 107.v,
                width: 208.h,
                alignment: Alignment.centerRight,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 19.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Monde feu",
                        style: theme.textTheme.titleLarge,
                      ),
                      SizedBox(height: 47.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 4.h,
                            vertical: 2.v,
                          ),
                          decoration: AppDecoration.fillWhiteA.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder18,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 3.v),
                                child: Text(
                                  "0/200",
                                  style:
                                      CustomTextStyles.bodySmallCustomBlack900,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgMonais320x20,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
