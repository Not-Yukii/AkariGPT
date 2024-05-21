import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import '../mondes_screen/mondes_screen.dart';
import '../parties_perso_two_page/parties_perso_two_page.dart';

// ignore_for_file: must_be_immutable
class JeuFeuScreen extends StatelessWidget {
  JeuFeuScreen({Key? key}) : super(key: key);

  List<DateTime?> selectedDatesFromCalendar = [];
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
              horizontal: 13.h,
              vertical: 10.v,
            ),
            child: Column(
              children: [
                SizedBox(height: 2.v),
                _buildTop(context),
                SizedBox(height: 19.v),
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
                    begin: Alignment(0.66, -0.03),
                    end: Alignment(0.2, 1),
                    colors: [appTheme.orange30002, appTheme.deepOrange900],
                  ),
                  corners: Corners(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 1.h,
                      vertical: 14.v,
                    ),
                    decoration: AppDecoration.gradientOrangeToRedA.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder18,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildInfosgrilles(context),
                        SizedBox(height: 15.v),
                        _buildCalendar(context),
                        SizedBox(height: 44.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: Text(
                              "Nombre de coups effectués : 12",
                              style: CustomTextStyles.bodyLargeBlack900,
                            ),
                          ),
                        ),
                        SizedBox(height: 18.v),
                        _buildLigne5(context),
                        SizedBox(height: 22.v),
                        Text(
                          "Pourcentage de réalisation de la grille : 50% ",
                          style: CustomTextStyles.bodyLargeBlack900,
                        ),
                        SizedBox(height: 10.v),
                        _buildLigne4(context),
                        SizedBox(height: 6.v),
                      ],
                    ),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: AppDecoration.outlineBlack,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                padding: EdgeInsets.all(8.h),
                decoration: AppDecoration.fillBluegray90001.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder18,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMonais2,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 3.v),
                      decoration: AppDecoration.outlineBlack,
                      child: Text(
                        "10 k",
                        style: CustomTextStyles.bodyMediumCustom_1,
                      ),
                    ),
                  ],
                ),
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
              CustomImageView(
                imagePath: ImageConstant.imgEllipse7,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
              Container(
                decoration: AppDecoration.outlineBlack,
                child: Text(
                  "Steve",
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 90.h,
          padding: EdgeInsets.symmetric(vertical: 7.v),
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
                        decoration: BoxDecoration(
                          color: appTheme.amber600,
                          borderRadius: BorderRadius.circular(3.h),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgBouttonParametres,
                height: 22.adaptSize,
                width: 22.adaptSize,
                onTap: () {
                  onTapImgBouttonone(context);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInfosgrilles(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
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
  Widget _buildCalendar(BuildContext context) {
    return SizedBox(
      height: 320.v,
      width: 340.h,
      child: CalendarDatePicker2(
        config: CalendarDatePicker2Config(
          calendarType: CalendarDatePicker2Type.multi,
          firstDate: DateTime(DateTime.now().year - 5),
          lastDate: DateTime(DateTime.now().year + 5),
          selectedDayHighlightColor: Color(0xFF000000),
          firstDayOfWeek: 0,
          selectedDayTextStyle: TextStyle(
            color: Color(0XFFFFFFFF),
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
        value: selectedDatesFromCalendar,
        onValueChanged: (dates) {},
      ),
    );
  }

  /// Section Widget
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
              style: CustomTextStyles.bodyLargeBlack900,
            ),
          ),
          Container(
            width: 66.h,
            decoration: AppDecoration.gradientRedToRedA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
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
                begin: Alignment(0.5, 1),
                end: Alignment(0.5, 0),
                colors: [appTheme.red50001, appTheme.redA70006],
              ),
              corners: Corners(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 9.h,
                  vertical: 1.v,
                ),
                child: Text(
                  "Utiliser",
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLigne4(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 130.h,
            decoration: AppDecoration.gradientRedToRed.copyWith(
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
                begin: Alignment(1, 0.5),
                end: Alignment(0, 0.5),
                colors: [appTheme.redA700, appTheme.redA70005],
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
                  "Reinitialiser la grille",
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ),
          ),
          Container(
            decoration: AppDecoration.outline1.copyWith(
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
                begin: Alignment(0.5, 0),
                end: Alignment(0.5, 1),
                colors: [appTheme.redA20003, appTheme.redA200],
              ),
              corners: Corners(
                topLeft: Radius.circular(14),
                topRight: Radius.circular(14),
                bottomLeft: Radius.circular(14),
                bottomRight: Radius.circular(14),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 4.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
            ),
          ),
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
              colors: [appTheme.redA20002, appTheme.redA20001],
            ),
            corners: Corners(
              topLeft: Radius.circular(14),
              topRight: Radius.circular(14),
              bottomLeft: Radius.circular(14),
              bottomRight: Radius.circular(14),
            ),
            child: CustomOutlinedButton(
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
              buttonStyle: CustomButtonStyles.outline,
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
  void onTapImgBouttonone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paramTresScreen);
  }
}