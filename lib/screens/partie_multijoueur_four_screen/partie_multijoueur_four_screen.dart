import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../screens/mondes_screen/mondes_screen.dart' as mondes;
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../parties_perso_two_page/parties_perso_two_page.dart';

// ignore_for_file: must_be_immutable
class PartieMultijoueurFourScreen extends StatelessWidget {
  PartieMultijoueurFourScreen({Key? key}) : super(key: key);

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
          child: SizedBox(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 12.v),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 13.h),
                  child: Column(
                    children: [
                      _buildTopSection(context),
                      SizedBox(height: 24.v),
                      Divider(),
                      SizedBox(height: 13.v),
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
                            appTheme.gray60001,
                          ],
                        ),
                        corners: Corners(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        child: Container(
                          decoration: AppDecoration.gradientGrayToGrayB.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder18,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 8.v),
                              _buildCalendarSection(context),
                              SizedBox(height: 10.v),
                              _buildLigne5Section(context),
                              SizedBox(height: 5.v),
                              Text(
                                "Pourcentage de réalisation de la grille : 50% ",
                                style: CustomTextStyles.bodyLarge17,
                              ),
                              SizedBox(height: 10.v),
                              _buildZoneDeChatSection(context),
                              SizedBox(height: 10.v),
                              _buildMessageSection(context),
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
        bottomNavigationBar: _buildBottombarSection(context),
        floatingActionButton: _buildFloatingactionbSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildTopSection(BuildContext context) {
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
      ],
    );
  }

  /// Section Widget
  Widget _buildCalendarSection(BuildContext context) {
    return SizedBox(
      height: 352.v,
      width: 340.h,
      child: CalendarDatePicker2(
        config: CalendarDatePicker2Config(
          calendarType: CalendarDatePicker2Type.multi,
          firstDate: DateTime(DateTime.now().year - 5),
          lastDate: DateTime(DateTime.now().year + 5),
          selectedDayHighlightColor: Color(0xFFF00000),
          firstDayOfWeek: 0,
          selectedDayTextStyle: TextStyle(
            color: Color(0xFFFFFFFF),
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
  Widget _buildLigne5Section(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
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
            padding: EdgeInsets.symmetric(
              horizontal: 9.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.fillDeepPurpleAC.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Text(
              "Utiliser",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 1.v,
            ),
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

  /// Section Widget
  Widget _buildZoneDeChatSection(BuildContext context) {
    return Container(
      width: 345.h,
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder18,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "on a bientôt fini la grille !",
                style: CustomTextStyles.bodyLarge17,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse7WhiteA700,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(
                  left: 15.h,
                  bottom: 5.v,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(right: 92.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse7,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 3.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.h),
                    child: Text(
                      "vous : oui !! On peut le faire !!",
                      style: CustomTextStyles.bodyLargeGray500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCloseWhiteA700,
                height: 25.v,
                width: 17.h,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse7BlueGray10001,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(
                  left: 15.h,
                  top: 5.v,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMessageSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.h),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              top: 15.v,
              bottom: 12.v,
            ),
            child: Text(
              "Entrez votre message ici ",
              style: CustomTextStyles.bodyMediumWorkSansBlack900,
            ),
          ),
          SizedBox(
            height: 45.adaptSize,
            width: 45.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottombarSection(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
          navigatorKey.currentContext!,
          getCurrentRoute(type),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFloatingactionbSection(BuildContext context) {
    return CustomFloatingButton(
      height: 45,
      width: 45,
      backgroundColor: appTheme.gray10001,
      child: CustomImageView(
        imagePath: ImageConstant.imgSend,
        height: 22.5.v,
        width: 22.5.h,
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
  onTapImgVectorone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.multijoueurTabContainerScreen);
  }
}