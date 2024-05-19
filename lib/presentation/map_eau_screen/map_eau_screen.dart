import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../mondes_page/mondes_page.dart';
import '../parties_perso_two_page/parties_perso_two_page.dart'; // ignore_for_file: must_be_immutable

class MapEauScreen extends StatelessWidget {
  MapEauScreen({Key? key})
      : super(
          key: key,
        );

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
                      CustomImageView(
                        imagePath: ImageConstant.imgCheminEau,
                        height: 596.v,
                        width: 345.h,
                        radius: BorderRadius.circular(
                          20.h,
                        ),
                      )
                    ],
                  ),
                )
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
                          )
                        ],
                      ),
                    ),
                    AppbarImage(
                      imagePath: ImageConstant.imgBouttonParametres,
                      margin: EdgeInsets.only(left: 16.h),
                      onTap: () {
                        onTapBouttonone(context);
                      },
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
                    left: 108.h,
                    top: 2.v,
                    bottom: 2.v,
                  ),
                  decoration: AppDecoration.outlineBlack,
                  child: Text(
                    "Monde Eau",
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

  onTapBouttonone(BuildContext context) {}
}
