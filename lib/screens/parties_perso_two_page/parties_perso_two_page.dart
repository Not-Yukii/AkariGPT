import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_search_view.dart';
import 'widgets/nestedview_item_widget.dart';
import 'widgets/viewhierarchy_item_widget.dart'; // ignore_for_file: must_be_immutable

class PartiesPersoTwoPage extends StatelessWidget {
  PartiesPersoTwoPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
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
            decoration: AppDecoration.gradientGrayToBlueGray,
            child: Column(
              children: [
                SizedBox(height: 12.v),
                _buildTopSection(context),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.h,
                    vertical: 10.v,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 9.v),
                      Divider(),
                      SizedBox(height: 12.v),
                      Text(
                        "Mes grilles sauvegardées",
                        style: CustomTextStyles.bodyLarge18,
                      ),
                      SizedBox(height: 3.v),
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
                            appTheme.gray60001.withOpacity(0)
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
                            horizontal: 9.h,
                            vertical: 10.v,
                          ),
                          decoration: AppDecoration.outline.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder30,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomSearchView(
                                controller: searchController,
                                hintText: "Recherche une grille",
                              ),
                              SizedBox(height: 10.v),
                              _buildNamezoneSection1(context),
                              SizedBox(height: 10.v),
                              _buildNamezoneSection(
                                context,
                                grillesmallOne: "Grille Small : 10x10 - Feu ",
                                reprendreOne: "Reprendre",
                              ),
                              SizedBox(height: 10.v),
                              _buildNamezoneSection(
                                context,
                                grillesmallOne: "Grille Small : 40x20 - Eau  ",
                                reprendreOne: "Reprendre",
                              ),
                              SizedBox(height: 10.v),
                              _buildNamezoneSection(
                                context,
                                grillesmallOne:
                                    "Grille Medium : 70x70 - Plante  ",
                                reprendreOne: "Reprendre",
                              ),
                              SizedBox(height: 10.v),
                              _buildNamezoneSection(
                                context,
                                grillesmallOne:
                                    "Grille Medium : 100x100  - Blanc",
                                reprendreOne: "Reprendre",
                              ),
                              SizedBox(height: 10.v),
                              _buildNamezoneSection(
                                context,
                                grillesmallOne:
                                    "Grille Large : 120x120  - Foudre",
                                reprendreOne: "Reprendre",
                              ),
                              SizedBox(height: 10.v),
                              _buildNamezoneSection(
                                context,
                                grillesmallOne:
                                    "Grille Large : 150x130  - Roche",
                                reprendreOne: "Reprendre",
                              ),
                              SizedBox(height: 12.v),
                              Text(
                                "Vous cherchez à créer une nouvelle grille Solo ?",
                                style: CustomTextStyles.bodyLarge17,
                              ),
                              SizedBox(height: 7.v),
                              CustomElevatedButton(
                                width: 126.h,
                                text: "Créer une room",
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTopSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            title: Padding(
              padding: EdgeInsets.only(left: 13.h),
              child: Row(
                children: [
                  Container(
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgAk,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8.h),
                    padding: EdgeInsets.all(8.h),
                    decoration: AppDecoration.fillBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder18,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppbarImage(
                          imagePath: ImageConstant.imgMonais2,
                        ),
                        AppbarSubtitle(
                          text: "10 k",
                          margin: EdgeInsets.symmetric(vertical: 3.v),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 7.h,
                      vertical: 8.v,
                    ),
                    decoration: AppDecoration.fillBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder18,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppbarImage(
                          imagePath: ImageConstant.imgEllipse7,
                        ),
                        AppbarTitle(
                          text: "Steve",
                          margin: EdgeInsets.symmetric(vertical: 1.v),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            actions: [
              Container(
                width: 90.h,
                margin: EdgeInsets.only(
                  left: 8.h,
                  right: 13.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder18,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 22.adaptSize,
                      width: 22.adaptSize,
                      decoration: AppDecoration.outlineBlack,
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgBell,
                            height: 22.v,
                            width: 21.h,
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 7.v,
                              width: 6.h,
                              margin: EdgeInsets.only(
                                right: 16.h,
                                bottom: 15.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.amber600,
                                borderRadius: BorderRadius.circular(
                                  3.h,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    AppbarImage(
                      imagePath: ImageConstant.imgBouttonParametres,
                      margin: EdgeInsets.only(left: 16.h),
                    )
                  ],
                ),
              )
            ],
            styleType: Style.bgShadow,
          ),
          SizedBox(height: 29.v),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 21.v,
                  width: 13.h,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 70.h,
                    top: 2.v,
                    bottom: 2.v,
                  ),
                  decoration: AppDecoration.outlineBlack,
                  child: Text(
                    "Parties Personnalisées",
                    style: theme.textTheme.bodyMedium,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNamezoneSection1(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          decoration: AppDecoration.outlineBlack900.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder18,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              SizedBox(
                height: 34.v,
                width: 324.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 26.v,
                        width: 322.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            13.h,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.h,
                              right: 1.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 5.v,
                                    bottom: 2.v,
                                  ),
                                  child: Text(
                                    "Options de filtrage :",
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight,
                                  height: 26.v,
                                  width: 33.h,
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Divider(
                            color: appTheme.whiteA700.withOpacity(0.6),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 4.v),
              Expanded(
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 14.v,
                    );
                  },
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return ViewhierarchyItemWidget();
                  },
                ),
              ),
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 13.h,
                  right: 10.h,
                ),
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 12.v,
                    );
                  },
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return NestedviewItemWidget();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildNamezoneSection(
    BuildContext context, {
    required String grillesmallOne,
    required String reprendreOne,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 1.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Grille Small : 40",
                    style: theme.textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: "x",
                    style: CustomTextStyles.bodyLargePecita,
                  ),
                  TextSpan(
                    text: "20 - ",
                    style: theme.textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: "Eau",
                    style: CustomTextStyles.labelLargeBlue20001,
                  ),
                  TextSpan(
                    text: "  ",
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            width: 75.h,
            padding: EdgeInsets.symmetric(
              horizontal: 5.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.outlineBlack900.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder18,
            ),
            child: Text(
              reprendreOne,
              style: theme.textTheme.labelLarge!.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          )
        ],
      ),
    );
  }
}
