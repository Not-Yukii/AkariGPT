import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../screens/mondes_screen/mondes_screen.dart' as mondes;
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../parties_perso_two_page/parties_perso_two_page.dart'; // ignore_for_file: must_be_immutable

class MapPlanteScreen extends StatelessWidget {
  MapPlanteScreen({Key? key}) : super(key: key);

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
                          colors: [appTheme.green500, appTheme.greenA40001],
                        ),
                        corners: Corners(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 53.h),
                          decoration: AppDecoration.gradientGreenAToGreen.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder18,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 38.v),
                              CustomImageView(
                                imagePath: ImageConstant.imgCheminPlante,
                                height: 557.v,
                                width: 235.h,
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
            margin: EdgeInsets.only(left: 8.h),
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

  /// Navigates to the paramTresScreen when the action is triggered.
  onTapButtonone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paramTresScreen);
  }
}