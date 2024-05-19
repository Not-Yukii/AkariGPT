import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';

// ignore_for_file: must_be_immutable
class ProfilScreen extends StatelessWidget {
  ProfilScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [appTheme.gray900, appTheme.blueGray900],
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 22.v,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildHead(context),
                SizedBox(height: 22.v),
                Text(
                  "Profil",
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 21.v),
                Divider(
                  indent: 5.h,
                  endIndent: 5.h,
                ),
                SizedBox(height: 21.v),
                _buildUser(context),
                SizedBox(height: 10.v),
                OutlineGradientButton(
                  padding: EdgeInsets.only(
                    left: 1.h,
                    top: 1.v,
                    right: 1.h,
                    bottom: 1.v,
                  ),
                  strokeWidth: 1.h,
                  gradient: LinearGradient(
                    begin: Alignment(0.5, 0),
                    end: Alignment(0.5, 1),
                    colors: [
                      appTheme.gray90002,
                      appTheme.gray800Ed,
                      appTheme.gray60001.withOpacity(0),
                    ],
                  ),
                  corners: Corners(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 37.h,
                      vertical: 10.v,
                    ),
                    decoration: AppDecoration.outline.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder30,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Achievements :",
                          style: CustomTextStyles.bodyLarge18,
                        ),
                        SizedBox(height: 17.v),
                        SizedBox(
                          height: 49.v,
                          width: 275.h,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Complétez le monde eau",
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 22.h,
                                    bottom: 4.v,
                                  ),
                                  child: Container(
                                    height: 6.v,
                                    width: 174.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.teal4000c,
                                      borderRadius: BorderRadius.circular(3.h),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(3.h),
                                      child: LinearProgressIndicator(
                                        value: 0.6,
                                        backgroundColor: appTheme.teal4000c,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    right: 82.h,
                                    bottom: 12.v,
                                  ),
                                  child: Text(
                                    "11 / 23",
                                    style: CustomTextStyles
                                        .bodyMediumIndieFlower13,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  margin: EdgeInsets.only(
                                    left: 221.h,
                                    top: 27.v,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8.h,
                                    vertical: 1.v,
                                  ),
                                  decoration:
                                      AppDecoration.fillWhiteA.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "1000",
                                        style: CustomTextStyles
                                            .bodySmallIndieFlowerBlack900,
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgMonais,
                                        height: 14.v,
                                        width: 16.h,
                                        margin: EdgeInsets.symmetric(
                                          vertical: 2.v,
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgIcon24PxTrophy,
                                        height: 14.v,
                                        width: 17.h,
                                        alignment: Alignment.bottomLeft,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 7.v),
                        SizedBox(
                          height: 49.v,
                          width: 275.h,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Complétez le monde feu",
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 22.h,
                                    bottom: 4.v,
                                  ),
                                  child: Container(
                                    height: 6.v,
                                    width: 174.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.teal4000c,
                                      borderRadius: BorderRadius.circular(3.h),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(3.h),
                                      child: LinearProgressIndicator(
                                        value: 0.6,
                                        backgroundColor: appTheme.teal4000c,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    right: 82.h,
                                    bottom: 11.v,
                                  ),
                                  child: Text(
                                    "11 / 23",
                                    style: CustomTextStyles
                                        .bodyMediumIndieFlower13,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgIcon24PxTrophy,
                                height: 14.v,
                                width: 17.h,
                                alignment: Alignment.bottomLeft,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  margin: EdgeInsets.only(
                                    left: 220.h,
                                    top: 25.v,
                                    bottom: 2.v,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 9.h,
                                    vertical: 1.v,
                                  ),
                                  decoration:
                                      AppDecoration.fillWhiteA.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "1000",
                                        style: CustomTextStyles
                                            .bodySmallIndieFlowerBlack900,
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgMonais,
                                        height: 14.v,
                                        width: 16.h,
                                        margin: EdgeInsets.symmetric(
                                          vertical: 2.v,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Complétez le monde plante",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgIcon24PxTrophy,
                              height: 14.v,
                              width: 17.h,
                              margin: EdgeInsets.only(top: 13.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h, bottom: 4.v),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 3.h),
                                    child: Text(
                                      "11 / 23",
                                      style: CustomTextStyles
                                          .bodyMediumIndieFlower13,
                                    ),
                                  ),
                                  Container(
                                    height: 6.v,
                                    width: 174.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.teal4000c,
                                      borderRadius: BorderRadius.circular(3.h),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(3.h),
                                      child: LinearProgressIndicator(
                                        value: 0.6,
                                        backgroundColor: appTheme.teal4000c,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 27.h,
                              top: 5.v,
                            ),
                            child: _buildRcompence(
                              context,
                              zipcode: "1000",
                            ),
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Complétez le monde roche",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgIcon24PxTrophy,
                              height: 14.v,
                              width: 17.h,
                              margin: EdgeInsets.only(top: 13.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h, bottom: 4.v),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 3.h),
                                    child: Text(
                                      "11 / 23",
                                      style: CustomTextStyles
                                          .bodyMediumIndieFlower13,
                                    ),
                                  ),
                                  Container(
                                    height: 6.v,
                                    width: 174.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.teal4000c,
                                      borderRadius: BorderRadius.circular(3.h),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(3.h),
                                      child: LinearProgressIndicator(
                                        value: 0.6,
                                        backgroundColor: appTheme.teal4000c,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 27.h,
                              top: 5.v,
                            ),
                            child: _buildRcompence(
                              context,
                              zipcode: "1000",
                            ),
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "Complétez le monde foudre",
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgIcon24PxTrophy,
                              height: 14.v,
                              width: 17.h,
                              margin: EdgeInsets.only(top: 13.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.h, bottom: 4.v),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 3.h),
                                    child: Text(
                                      "11 / 23",
                                      style: CustomTextStyles
                                          .bodyMediumIndieFlower13,
                                    ),
                                  ),
                                  Container(
                                    height: 6.v,
                                    width: 174.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.teal4000c,
                                      borderRadius: BorderRadius.circular(3.h),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(3.h),
                                      child: LinearProgressIndicator(
                                        value: 0.6,
                                        backgroundColor: appTheme.teal4000c,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 27.h,
                              top: 5.v,
                            ),
                            child: _buildRcompence(
                              context,
                              zipcode: "1000",
                            ),
                          ),
                        ),
                        SizedBox(height: 8.v),
                        SizedBox(
                          height: 50.v,
                          width: 277.h,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text(
                                    "Complétez 50 grille",
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgTicket,
                                height: 14.v,
                                width: 17.h,
                                alignment: Alignment.bottomLeft,
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 24.h,
                                    bottom: 4.v,
                                  ),
                                  child: Container(
                                    height: 6.v,
                                    width: 174.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.orange30001,
                                      borderRadius: BorderRadius.circular(3.h),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Opacity(
                                          opacity: 0.2,
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                              width: 174.h,
                                              child: Divider(
                                                color:
                                                    appTheme.orange30001.withOpacity(0.42),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Opacity(
                                          opacity: 0.8,
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                              width: 173.h,
                                              child: Divider(
                                                color:
                                                    appTheme.orange30001.withOpacity(0.64),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    right: 83.h,
                                    bottom: 11.v,
                                  ),
                                  child: Text(
                                    "11 / 23",
                                    style: CustomTextStyles
                                        .bodyMediumIndieFlower13,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  margin: EdgeInsets.only(
                                    left: 225.h,
                                    top: 27.v,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8.h,
                                    vertical: 1.v,
                                  ),
                                  decoration:
                                      AppDecoration.fillWhiteA.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "56/50",
                                        style: CustomTextStyles
                                            .bodyMediumIndieFlower13,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 225.h,
                                  top: 27.v,
                                  bottom: 1.v,
                                ),
                                child: _buildRcompence(
                                  context,
                                  zipcode: "50",
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Récupérez 1000 Bulbies :",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgTicket,
                              height: 14.v,
                              width: 17.h,
                              margin: EdgeInsets.only(
                                top: 15.v,
                                bottom: 1.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 6.h,
                                bottom: 5.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 3.h),
                                    child: Text(
                                      "350",
                                      style: CustomTextStyles
                                          .bodyMediumIndieFlower13,
                                    ),
                                  ),
                                  Container(
                                    height: 6.v,
                                    width: 174.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.orange30001
                                          .withOpacity(0.42),
                                      borderRadius: BorderRadius.circular(3.h),
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(3.h),
                                    child: LinearProgressIndicator(
                                      value: 0.31,
                                      backgroundColor: appTheme.orange30001
                                          .withOpacity(0.42),
                                      valueColor:
                                          AlwaysStoppedAnimation<Color>(
                                        appTheme.orange30001
                                            .withOpacity(0.64),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 29.h,
                              top: 8.v,
                            ),
                            child: _buildRcompence(
                              context,
                              zipcode: "100",
                            ),
                          ),
                        ),
                        SizedBox(height: 4.v),
                        SizedBox(
                          height: 52.v,
                          width: 279.h,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Utilisez 30 indices",
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgTicket,
                                height: 14.v,
                                width: 17.h,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(bottom: 1.v),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 24.h,
                                    bottom: 5.v,
                                  ),
                                  child: Container(
                                    height: 6.v,
                                    width: 175.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.orange30001
                                          .withOpacity(0.42),
                                      borderRadius: BorderRadius.circular(3.h),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(3.h),
                                      child: LinearProgressIndicator(
                                        value: 0.31,
                                        backgroundColor: appTheme.orange30001
                                            .withOpacity(0.42),
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          appTheme.orange30001
                                              .withOpacity(0.64),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    right: 83.h,
                                    bottom: 11.v,
                                  ),
                                  child: Text(
                                    "11 / 23",
                                    style: CustomTextStyles
                                        .bodyMediumIndieFlower13,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  margin: EdgeInsets.only(
                                    left: 220.h,
                                    top: 25.v,
                                    bottom: 2.v,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 9.h,
                                    vertical: 1.v,
                                  ),
                                  decoration:
                                      AppDecoration.fillWhiteA.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "1000",
                                        style: CustomTextStyles
                                            .bodySmallIndieFlowerBlack900,
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgMonais,
                                        height: 14.v,
                                        width: 16.h,
                                        margin: EdgeInsets.symmetric(
                                          vertical: 2.v,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHead(BuildContext context) {
    // Define the implementation of _buildHead method here
    return Container();
  }

  Widget _buildUser(BuildContext context) {
    // Define the implementation of _buildUser method here
    return Container();
  }

  Widget _buildRcompence(BuildContext context, {required String zipcode}) {
    // Define the implementation of _buildRcompence method here
    return Container();
  }
}