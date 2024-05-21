import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../presentation/mondes_screen/mondes_screen.dart' as mondes;
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_radio_button.dart';
import '../../widgets/custom_search_view.dart';
import '../parties_perso_two_page/parties_perso_two_page.dart';
import 'widgets/nestedview1_item_widget.dart';

// ignore_for_file: must_be_immutable
class MultijoueurTwoScreen extends StatelessWidget {
  MultijoueurTwoScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();
  String optionsde = "";
  List<String> radioList = ["lbl_croissante", "lbl_d_croissante"];
  String trierpar = "";
  List<String> radioList1 = ["lbl_plante", "lbl_roche", "lbl_foudre"];
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
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
          child: SizedBox(
            child: Column(
              children: [
                SizedBox(height: 12.v),
                _buildTop(context),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.v),
                  child: Column(
                    children: [
                      SizedBox(height: 9.v),
                      Divider(),
                      SizedBox(height: 8.v),
                      OutlineGradientButton(
                        padding: EdgeInsets.only(
                            left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
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
                              horizontal: 7.h, vertical: 10.v),
                          decoration: AppDecoration.outline.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder30,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 4.v),
                              GestureDetector(
                                onTap: () {
                                  onTapTxtParties(context);
                                },
                                child: Text(
                                  "Parties Multijoueur en cours :",
                                  style: CustomTextStyles.bodyLarge18,
                                ),
                              ),
                              SizedBox(height: 12.v),
                              CustomSearchView(
                                controller: searchController,
                                hintText: "Recherche une grille",
                              ),
                              SizedBox(height: 10.v),
                              _buildNamezone1(context),
                              SizedBox(height: 10.v),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 1.h),
                                child: _buildNamezone(
                                  context,
                                  roomsmallOne:
                                      "Room Small : 10x10 - Feu - 7/10 ",
                                  rejoindreOne: "Rejoindre",
                                  onTapRejoindreOne: () {
                                    onTapTxtRejoindreOne(context);
                                  },
                                ),
                              ),
                              SizedBox(height: 10.v),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 1.h),
                                child: _buildNamezone(
                                  context,
                                  roomsmallOne:
                                      "Room Small : 40x20 - Eau - 5/10 ",
                                  rejoindreOne: "Rejoindre",
                                  onTapRejoindreOne: () {
                                    onTapTxtRejoindreOne1(context);
                                  },
                                ),
                              ),
                              SizedBox(height: 10.v),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 1.h),
                                child: _buildNamezone(
                                  context,
                                  roomsmallOne:
                                      "Room Large : 70x70 - Plante - 3/8 ",
                                  rejoindreOne: "Rejoindre",
                                  onTapRejoindreOne: () {
                                    onTapTxtRejoindreOne2(context);
                                  },
                                ),
                              ),
                              SizedBox(height: 10.v),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 1.h),
                                child: _buildNamezone(
                                  context,
                                  roomsmallOne:
                                      "Room Large : 100x100 - Blanc - 9/10 ",
                                  rejoindreOne: "Rejoindre",
                                  onTapRejoindreOne: () {
                                    onTapTxtRejoindreOne3(context);
                                  },
                                ),
                              ),
                              SizedBox(height: 10.v),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 1.h),
                                child: _buildNamezone(
                                  context,
                                  roomsmallOne:
                                      "Room Extra : 120x120 - Foudre - 1/5 ",
                                  rejoindreOne: "Rejoindre",
                                  onTapRejoindreOne: () {
                                    onTapTxtRejoindreOne4(context);
                                  },
                                ),
                              ),
                              SizedBox(height: 10.v),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 1.h),
                                child: _buildNamezone(
                                  context,
                                  roomsmallOne:
                                      "Grille Large : 150x130 - Roche - 7/15",
                                  rejoindreOne: "Rejoindre",
                                  onTapRejoindreOne: () {
                                    onTapTxtRejoindreOne5(context);
                                  },
                                ),
                              ),
                              SizedBox(height: 8.v),
                              Text(
                                "Vous cherchez à créer une nouvelle room multi ?",
                                style: CustomTextStyles.bodyLarge17,
                              ),
                              SizedBox(height: 11.v),
                              CustomElevatedButton(
                                height: 22.v,
                                width: 126.h,
                                text: "Créer une room",
                                buttonStyle:
                                    CustomButtonStyles.outlineBlackTL11,
                                buttonTextStyle: theme.textTheme.bodyLarge!,
                                onPressed: () {
                                  onTapCreruneroom(context);
                                },
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
        bottomNavigationBar: _buildBottombar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildTop(BuildContext context) {
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
                    decoration: AppDecoration.fillBluegray90001.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder18,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppbarImage(
                          imagePath: ImageConstant.imgMonais2,
                        ),
                        AppbarSubtitleThree(
                          text: "10 k",
                          margin: EdgeInsets.symmetric(vertical: 3.v),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 7.h, vertical: 8.v),
                    decoration: AppDecoration.fillBluegray90001.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder18,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppbarImage(
                          imagePath: ImageConstant.imgEllipse7,
                        ),
                        AppbarSubtitleTwo(
                          text: "Steve",
                          margin: EdgeInsets.symmetric(vertical: 1.v),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              Container(
                width: 90.h,
                margin: EdgeInsets.only(left: 8.h, right: 13.h),
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 7.v),
                decoration: AppDecoration.fillBluegray90001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder14,
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
                              margin:
                                  EdgeInsets.only(right: 16.h, bottom: 15.v),
                              decoration: BoxDecoration(
                                color: appTheme.amber600,
                                borderRadius: BorderRadius.circular(3.h),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    AppbarImage(
                      imagePath: ImageConstant.imgBouttonParametres,
                      margin: EdgeInsets.only(left: 16.h),
                    ),
                  ],
                ),
              ),
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
                  onTap: () {
                    onTapImgVectorone(context);
                  },
                ),
                Container(
                  margin: EdgeInsets.only(left: 83.h, top: 2.v, bottom: 2.v),
                  decoration: AppDecoration.outlineBlack,
                  child: Text(
                    "Parties Multijoueur",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNamezone1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder18,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          SizedBox(
            height: 33.v,
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
                      borderRadius: BorderRadius.circular(13.h),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.h, right: 1.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.v, bottom: 2.v),
                              child: Text(
                                "Options de filtrage :",
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgArrowRight,
                              height: 26.v,
                              width: 33.h,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Divider(
                        color: appTheme.whiteA700.withOpacity(0.6),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3.v),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 7.v,
                  bottom: 4.v,
                ),
                child: CustomRadioButton(
                  text: "Croissante",
                  value: radioList[0],
                  groupValue: optionsde,
                  textStyle: CustomTextStyles.labelMedium11,
                  onChange: (value) {
                    optionsde = value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8.h, 7.v, 9.h, 4.v),
                child: CustomRadioButton(
                  text: "Décroissante",
                  value: radioList[1],
                  groupValue: optionsde,
                  textStyle: CustomTextStyles.labelMedium11,
                  onChange: (value) {
                    optionsde = value;
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: CustomRadioButton(
                    text: "Plante",
                    value: radioList1[0],
                    groupValue: trierpar,
                    textStyle: CustomTextStyles.labelMediumGreen200,
                    onChange: (value) {
                      trierpar = value;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: CustomRadioButton(
                    text: "Roche",
                    value: radioList1[1],
                    groupValue: trierpar,
                    textStyle: CustomTextStyles.labelMediumRed300,
                    onChange: (value) {
                      trierpar = value;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: CustomRadioButton(
                    text: "Foudre",
                    value: radioList1[2],
                    groupValue: trierpar,
                    textStyle: CustomTextStyles.labelMediumYellowA20001,
                    onChange: (value) {
                      trierpar = value;
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 21.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h, right: 10.h),
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 9.v,
                );
              },
              itemCount: 2,
              itemBuilder: (context, index) {
                return NestedviewIIItemWidget();
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottombar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildNamezone(
    BuildContext context, {
    required String roomsmallOne,
    required String rejoindreOne,
    Function? onTapRejoindreOne,
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
                    text: "Room Small : 40",
                    style: theme.textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: " x",
                    style: CustomTextStyles.bodyLargePecita,
                  ),
                  TextSpan(
                    text: " 20 - ",
                    style: theme.textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: "Eau",
                    style: CustomTextStyles.labelLargeBlue20001,
                  ),
                  TextSpan(
                    text: " - 5/10 ",
                    style: CustomTextStyles.labelLargeBold_1,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          GestureDetector(
            onTap: () {
              onTapRejoindreOne?.call();
            },
            child: Container(
              width: 75.h,
              padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 1.v),
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
          ),
        ],
      ),
    );
  }

  /// Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Carteico25x26:
        return AppRoutes.mondesPage;
      case BottomBarEnum.Settings:
        return "/";
      case BottomBarEnum.Shopico:
        return "/";
      case BottomBarEnum.Lock:
        return AppRoutes.partiesPersoTwoPage;
      default:
        return "/";
    }
  }

  /// Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mondesPage:
        return mondes.MondeScreen();
      case AppRoutes.partiesPersoTwoPage:
        return PartiesPersoTwoPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the multijoueurTabContainerScreen when the action is triggered.
  void onTapImgVectorone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.multijoueurTabContainerScreen);
  }

  /// Navigates to the multijoueurTabContainerScreen when the action is triggered.
  void onTapTxtParties(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.multijoueurTabContainerScreen);
  }

  /// Navigates to the partieMultijoueurFourScreen when the action is triggered.
  void onTapTxtRejoindreOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.partieMultijoueurFourScreen);
  }

  /// Navigates to the partieMultijoueurFourScreen when the action is triggered.
  void onTapTxtRejoindreOne1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.partieMultijoueurFourScreen);
  }

  /// Navigates to the partieMultijoueurFourScreen when the action is triggered.
  void onTapTxtRejoindreOne2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.partieMultijoueurFourScreen);
  }

  /// Navigates to the partieMultijoueurFourScreen when the action is triggered.
  void onTapTxtRejoindreOne3(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.partieMultijoueurFourScreen);
  }

  /// Navigates to the partieMultijoueurFourScreen when the action is triggered.
  void onTapTxtRejoindreOne4(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.partieMultijoueurFourScreen);
  }

  /// Navigates to the partieMultijoueurFourScreen when the action is triggered.
  void onTapTxtRejoindreOne5(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.partieMultijoueurFourScreen);
  }

  /// Navigates to the multijoueurTabContainerScreen when the action is triggered.
  void onTapCreruneroom(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.multijoueurTabContainerScreen);
  }
}
