import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../presentation/mondes_screen/mondes_screen.dart' as mondes;
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_title_button.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../parties_perso_two_page/parties_perso_two_page.dart';

// ignore_for_file: must_be_immutable
class PartiePersoThreeScreen extends StatelessWidget {
  PartiePersoThreeScreen({Key? key}) : super(key: key);

  TextEditingController casesblancfiveController = TextEditingController();
  TextEditingController edittextController = TextEditingController();
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
                      EdgeInsets.symmetric(horizontal: 15.h, vertical: 24.v),
                  child: Column(
                    children: [
                      SizedBox(height: 9.v),
                      Divider(),
                      SizedBox(height: 22.v),
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
                          colors: [appTheme.gray90002, appTheme.gray60001],
                        ),
                        corners: Corners(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 1.h, vertical: 10.v),
                          decoration:
                              AppDecoration.gradientGrayToGrayB.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder18,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Grille personnalisée 25 x 25",
                                style: theme.textTheme.bodyMedium,
                              ),
                              SizedBox(height: 8.v),
                              _buildStackTwo(context),
                              SizedBox(height: 22.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15.h),
                                  child: Text(
                                    "Nombre de coups effectués : 12",
                                    style: CustomTextStyles.bodyLarge17,
                                  ),
                                ),
                              ),
                              SizedBox(height: 18.v),
                              _buildLigne5(context),
                              SizedBox(height: 22.v),
                              Text(
                                "Pourcentage de réalisation de la grille : 50%",
                                style: CustomTextStyles.bodyLarge17,
                              ),
                              SizedBox(height: 10.v),
                              _buildLigne4(context),
                              SizedBox(height: 3.v),
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
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

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
                        image: AssetImage(ImageConstant.imgAk),
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
                        AppbarImage(imagePath: ImageConstant.imgMonais2),
                        AppbarSubtitleThree(
                          text: "10 k",
                          margin: EdgeInsets.symmetric(vertical: 3.v),
                        ),
                      ],
                    ),
                  ),
                  AppbarTitleButton(margin: EdgeInsets.only(left: 8.h)),
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
                ),
                Container(
                  margin: EdgeInsets.only(left: 74.h, top: 2.v),
                  decoration: AppDecoration.outlineBlack,
                  child: Text(
                    "Partie Personnalisées",
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

  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
          navigatorKey.currentContext!,
          getCurrentRoute(type),
        );
      },
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

  Widget _buildStackTwo(BuildContext context) {
    return Container(
      height: 320.v,
      width: 340.h,
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup411,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroupBulbsBlanches,
            height: 310.v,
            width: 298.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(right: 40.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTwo(context),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 40.v,
                      width: 39.h,
                      margin: EdgeInsets.only(right: 81.h),
                      decoration: BoxDecoration(
                        color: appTheme.black900,
                      ),
                    ),
                  ),
                  SizedBox(height: 40.v),
                  _buildTwo1(context),
                  Row(
                    children: [
                      Container(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.imgCasesBlanc3),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      _buildCasesBlancFive(context),
                      Container(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.imgCasesBlanc3),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.imgCasesBlanc3),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.imgCasesBlanc3),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      _buildTwo(context),
                      Container(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.imgCasesBlanc3),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 40.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              _buildOne(context),
                              _buildEditText(context),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTwo(BuildContext context) {
    return CustomElevatedButton(
      width: 39.h,
      text: "2",
      margin: EdgeInsets.only(left: 80.h),
    );
  }

  Widget _buildTwo1(BuildContext context) {
    return CustomElevatedButton(
      width: 39.h,
      text: "2",
      margin: EdgeInsets.only(left: 1.h),
    );
  }

  Widget _buildCasesBlancFive(BuildContext context) {
    return CustomTextFormField(
      width: 40.adaptSize,
      controller: casesblancfiveController,
      borderDecoration: TextFormFieldStyleHelper.custom,
      filled: false,
    );
  }

  Widget _buildOne(BuildContext context) {
    return CustomElevatedButton(
      width: 39.h,
      text: "1",
      buttonTextStyle: CustomTextStyles.bodyLargeInter,
    );
  }

  Widget _buildEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 82.h),
      child: CustomTextFormField(
        width: 39.h,
        controller: edittextController,
        textInputAction: TextInputAction.done,
        borderDecoration: TextFormFieldStyleHelper.fillBlack,
        fillColor: appTheme.black900,
      ),
    );
  }

  Widget _buildLigne5(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Text(
              "Indices restants : 10",
              style: CustomTextStyles.bodyLarge17,
            ),
          ),
          Container(
            width: 66.h,
            padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 1.v),
            decoration: AppDecoration.fillDeepPurpleAC.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Text(
              "Utiliser",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 1.v),
            decoration: AppDecoration.fillRedE.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "100",
                  style: CustomTextStyles.bodyLarge17,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMonais3,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 2.v),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLigne4(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 130.h,
            padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 1.v),
            decoration: AppDecoration.fillRed.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            child: Text(
              "Reinitialiser la grille",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5.h),
            decoration: AppDecoration.fillGreenA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 4.v),
                  child: Text(
                    "undo",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage17,
                  height: 19.adaptSize,
                  width: 19.adaptSize,
                  margin: EdgeInsets.only(left: 5.h, top: 5.v, bottom: 4.v),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5.h),
            decoration: AppDecoration.fillDeepPurple.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage19,
                  height: 19.adaptSize,
                  width: 19.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 5.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.h, bottom: 4.v),
                  child: Text(
                    "redo",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
