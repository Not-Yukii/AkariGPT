import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../mondes_page/mondes_page.dart';
import '../parties_perso_two_page/parties_perso_two_page.dart';

// ignore_for_file: must_be_immutable
class JeulectriqueScreen extends StatelessWidget {
  JeulectriqueScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController casesjfiveController = TextEditingController();

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
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.h,
                    vertical: 10.v,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 9.v),
                      Divider(),
                      SizedBox(height: 8.v),
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
                            appTheme.yellowA100A8,
                            appTheme.yellowA20001
                          ],
                        ),
                        corners: Corners(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 14.v),
                          decoration: AppDecoration.gradientYellowAAToYellowA.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder18,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildInfosgrilles(context),
                          SizedBox(height: 15.v),
                          _buildStackampoules(context),
                          SizedBox(height: 30.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 18.h),
                              child: Text(
                                "Nombre de coups effectués : 12",
                                style: CustomTextStyles.bodyLargeBlack900,
                              ),
                            ),
                          ),
                          SizedBox(height: 18.v),
                          _buildLigne2(context),
                          SizedBox(height: 22.v),
                          Text(
                            "Pourcentage de réalisation de la grille : 50% ",
                            style: CustomTextStyles.bodyLargeBlack900,
                          ),
                          SizedBox(height: 17.v),
                          _buildLigne4(context),
                          SizedBox(height: 14.v),
                        ],
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
                ],
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
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 8.v,
            ),
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
                      ),
                    ],
                  ),
                ),
                AppbarImage(
                  imagePath: ImageConstant.imgBouttonParametres,
                  margin: EdgeInsets.only(left: 16.h),
                  onTap: () {
                    onTapBouttonone(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfosgrilles(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Grille n°1",
            style: theme.textTheme.bodyMedium,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 2.v,
            ),
            child: Text(
              "0/20",
              style: CustomTextStyles.bodyMediumCustom_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMonais320x20,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return CustomElevatedButton(
      width: 39.h,
      text: "2",
      margin: EdgeInsets.only(left: 1.h),
    );
  }

  Widget _buildTwo1(BuildContext context) {
    return CustomElevatedButton(
      width: 39.h,
      text: "2",
      margin: EdgeInsets.only(left: 81.h),
    );
  }

  Widget _buildCasesjfive(BuildContext context) {
    return CustomTextFormField(
      width: 40.adaptSize,
      controller: casesjfiveController,
      borderDecoration: TextFormFieldStyleHelper.custom,
      filled: false,
    );
  }

  /// Section Widget
  Widget _buildStackampoules(BuildContext context) {
    return Container(
      height: 320.v,
      width: 340.h,
      padding: EdgeInsets.symmetric(horizontal: 9.h),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup423,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgAmpoulesFoudres,
            height: 308.v,
            width: 296.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(right: 41.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTwo(context),
                  Align(
                    alignment: Alignment.center,
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
                            image: AssetImage(
                              ImageConstant.imgCasesJ1,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  _buildCasesjfive(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUtiliser(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.h),
      child: OutlineGradientButton(
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
          colors: [appTheme.yellow300, appTheme.lime60001],
        ),
        corners: Corners(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        child: CustomOutlinedButton(
          width: 66.h,
          text: "Utiliser",
          buttonStyle: CustomButtonStyles.none,
          decoration: CustomButtonStyles.gradientLimeToYellowADecoration,
        ),
      ),
    );
  }

  Widget _buildLigne2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Text(
              "Indices restants : 10",
              style: CustomTextStyles.bodyLargeBlack900,
            ),
          ),
          _buildUtiliser(context),
          Container(
            width: 66.h,
            margin: EdgeInsets.only(left: 20.h),
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.gradientLimeAToLime.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: AppDecoration.outlineBlack,
                  child: Text(
                    "100",
                    style: CustomTextStyles.bodyLarge17,
                  ),
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

  /// Section Widget
  Widget _buildRedo(BuildContext context) {
    return CustomElevatedButton(
      height: 29.v,
      width: 64.h,
      text: "redo",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 5.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgImage19,
          height: 19.adaptSize,
          width: 19.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientOrangeAToDeepOrangeADecoration,
      buttonTextStyle: theme.textTheme.bodyLarge!,
    );
  }

  Widget _buildLigne4(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 130.h,
            decoration: AppDecoration.gradientYellowToYellow.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            child: OutlineGradientButton(
              padding: EdgeInsets.only(
                left: 1.h,
                top: 1.v,
                right: 1.h,
                bottom: 1.v,
              ),
              strokeWidth: 1.h,
              gradient: LinearGradient(
                begin: Alignment(0, 0.5),
                end: Alignment(1, 0.5),
                colors: [appTheme.yellowA200, appTheme.amber400],
              ),
              corners: Corners(
                topLeft: Radius.circular(14),
                topRight: Radius.circular(14),
                bottomLeft: Radius.circular(14),
                bottomRight: Radius.circular(14),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.h,
                  vertical: 1.v,
                ),
                child: Text(
                  "Réinitialiser la grille",
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5.h),
            decoration: AppDecoration.gradientOrangeAToDeepOrangeA.copyWith(
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
                  margin: EdgeInsets.only(
                    left: 5.h,
                    top: 5.v,
                    bottom: 4.v,
                  ),
                ),
              ],
            ),
          ),
          _buildRedo(context),
        ],
      ),
    );
  }

  Widget _buildBottombar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
          navigatorKey.currentContext!,
          getCurrentRoute(type),
        );
      },
    );
  }

  ///Handling route based on bottom click actions
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

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mondesPage:
        return MondesPage();
      case AppRoutes.partiesPersoTwoPage:
        return PartiesPersoTwoPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the paramTresScreen when the action is triggered.
  onTapBouttonone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paramTresScreen);
  }
}