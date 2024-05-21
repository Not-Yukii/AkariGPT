import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'widgets/listajouterdela1_item_widget.dart';
import 'widgets/themeselection1_item_widget.dart'; // ignore_for_file: must_be_immutable

class MultijoueurPage extends StatefulWidget {
  const MultijoueurPage({Key? key}) : super(key: key);

  @override
  MultijoueurPageState createState() => MultijoueurPageState();
}

class MultijoueurPageState extends State<MultijoueurPage>
    with AutomaticKeepAliveClientMixin<MultijoueurPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.h),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.h,
                          vertical: 4.v,
                        ),
                        decoration: AppDecoration.fillBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder14,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 2.v),
                              child: Text(
                                "Nombre de joueurs :",
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Container(
                              width: 40.h,
                              margin: EdgeInsets.only(
                                left: 5.h,
                                top: 2.v,
                                bottom: 2.v,
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              decoration: AppDecoration.fillWhiteA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder7,
                              ),
                              child: Text(
                                "2",
                                style: CustomTextStyles.bodySmallBlack900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12.v),
                      SizedBox(
                        height: 32.v,
                        width: 177.h,
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                margin: EdgeInsets.only(bottom: 3.v),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.h,
                                  vertical: 4.v,
                                ),
                                decoration: AppDecoration.fillBlueGray.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder14,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 1.v),
                                      child: Text(
                                        "Taille :",
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                    Container(
                                      width: 40.h,
                                      margin: EdgeInsets.only(
                                        left: 5.h,
                                        top: 2.v,
                                        bottom: 2.v,
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 12.h),
                                      decoration: AppDecoration.fillWhiteA.copyWith(
                                        borderRadius: BorderRadiusStyle.roundedBorder7,
                                      ),
                                      child: Text(
                                        "25",
                                        style: CustomTextStyles.bodySmallBlack900,
                                      ),
                                    ),
                                    Container(
                                      width: 40.h,
                                      margin: EdgeInsets.only(
                                        left: 30.h,
                                        top: 2.v,
                                        bottom: 2.v,
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 12.h),
                                      decoration: AppDecoration.fillWhiteA.copyWith(
                                        borderRadius: BorderRadiusStyle.roundedBorder7,
                                      ),
                                      child: Text(
                                        "25",
                                        style: CustomTextStyles.bodySmallBlack900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 58.h),
                                child: Text(
                                  "x",
                                  style: theme.textTheme.headlineSmall,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 9.v),
                      _buildListAjouterDela(context),
                      SizedBox(height: 12.v),
                      _buildThemeSelection(context),
                      SizedBox(height: 12.v),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 44.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.h,
                          vertical: 8.v,
                        ),
                        decoration: AppDecoration.outlineBlack900.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder18,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomElevatedButton(
                              height: 36.v,
                              width: 113.h,
                              text: "Create Room",
                              buttonStyle: CustomButtonStyles.outlineBlack,
                              buttonTextStyle: CustomTextStyles.labelLargeSemiBold,
                            ),
                            Container(
                              width: 97.h,
                              margin: EdgeInsets.only(left: 7.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 13.h,
                                vertical: 8.v,
                              ),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder18,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Text(
                                      "Prix : 10",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgMonais3,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 17.v),
                      _buildColumnListedes(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildListAjouterDela(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 62.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 5.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return ListajouterdelaiItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildThemeSelection(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 9.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 1.v,
          );
        },
        itemCount: 1,
        itemBuilder: (context, index) {
          return Themeselection1ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnListedes(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            onTapTxtListedes(context);
          },
          child: Container(
            decoration: AppDecoration.outlineBlack,
            child: Text(
              "Liste des parties multijoueur en cours",
              style: CustomTextStyles.bodyLarge18,
            ),
          ),
        ),
        SizedBox(height: 11.v),
        GestureDetector(
          onTap: () {
            onTapRooms(context);
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 5.v,
            ),
            decoration: AppDecoration.outline.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder30,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: _buildNameZone(
                    context,
                    roomsmallone: "Room Small : 10x10 - Feu - 7/10",
                    rejoindreOne: "Rejoindre",
                  ),
                ),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: _buildNameZone(
                    context,
                    roomsmallone: "Room Small : 40x20 - Eau - 5/10",
                    rejoindreOne: "Rejoindre",
                  ),
                ),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: _buildNameZone(
                    context,
                    roomsmallone: "Room Large : 70x70 - Plante - 3/8",
                    rejoindreOne: "Rejoindre",
                  ),
                ),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: _buildNameZone(
                    context,
                    roomsmallone: "Room Extra : 120x120 - Foudre - 1/5",
                    rejoindreOne: "Rejoindre",
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildNameZone(
    BuildContext context, {
    required String roomsmallone,
    required String rejoindreOne,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3.v),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v, bottom: 1.v),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: roomsmallone,
                    style: theme.textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: " x ",
                    style: CustomTextStyles.bodyLargePecita,
                  ),
                  TextSpan(
                    text: "20 - Eau - 5/10",
                    style: CustomTextStyles.labelLargeBlue20001,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            width: 75.h,
            padding: EdgeInsets.symmetric(
              horizontal: 9.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.outlineBlack900.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Text(
              rejoindreOne,
              style: theme.textTheme.labelLarge!.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the multijoueurTwoScreen when the action is triggered.
  onTapTxtListedes(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.multijoueurTwoScreen);
  }

  /// Navigates to the multijoueurTwoScreen when the action is triggered.
  onTapRooms(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.multijoueurTwoScreen);
  }
}
