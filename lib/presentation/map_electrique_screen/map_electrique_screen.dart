import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../mondes_page/mondes_page.dart';
import '../parties_perso_two_page/parties_perso_two_page.dart';

// ignore_for_file: must_be_immutable
class MapElectriqueScreen extends StatelessWidget {
  MapElectriqueScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppbar(context),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBackToMondes,
                      height: 37.v,
                      width: 46.h,
                      onTap: () {
                        onTapImgBacktomondes(context);
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 80.h,
                        top: 10.v,
                        bottom: 9.v,
                      ),
                      child: Text(
                        "Monde Foudre",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.v),
                Divider(indent: 2.h),
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
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
                      colors: [appTheme.yellowA20001, appTheme.yellowA100A8],
                    ),
                    corners: Corners(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 54.h),
                      decoration:
                          AppDecoration.gradientYellowAAToYellowA20001.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder18,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 41.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgCheminFoudre,
                            height: 554.v,
                            width: 234.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: buildBottombar(context),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 13.h),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                onTapAkone(context);
              },
              child: Container(
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
            ),
            GestureDetector(
              onTap: () {
                onTapMoniaiebulbies(context);
              },
              child: Container(
                height: 36.adaptSize,
                width: 36.adaptSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgMonais,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                onTapPseudo(context);
              },
              child: Container(
                margin: EdgeInsets.only(left: 8.h),
                padding: EdgeInsets.all(8.h),
                decoration: AppDecoration.fillBluegray90001.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder18,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppbarImage(
                      imagePath: ImageConstant.imgMonais320x20,
                    ),
                    AppbarSubtitleOne(
                      text: "10 k",
                      margin: EdgeInsets.fromLTRB(1.h, 3.v, 2.h, 2.v),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                onTapPseudo(context);
              },
              child: Container(
                width: 135.h,
                margin: EdgeInsets.only(left: 8.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 7.h,
                  vertical: 8.v,
                ),
                decoration: AppDecoration.fillBluegray90001.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder18,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppbarImage(
                      imagePath: ImageConstant.imgEllipse720x20,
                    ),
                    AppbarSubtitle(
                      text: "Steve",
                      margin: EdgeInsets.fromLTRB(31.h, 1.v, 32.h, 1.v),
                    ),
                  ],
                ),
              ),
            ),
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
          decoration: AppDecoration.fillBluegray90001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder14,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 7.v,
                width: 6.h,
                margin: EdgeInsets.only(bottom: 15.v),
                decoration: BoxDecoration(
                  color: appTheme.amber600,
                  borderRadius: BorderRadius.circular(3.h),
                ),
              ),
              AppbarImage(
                imagePath: ImageConstant.imgBell,
              ),
              AppbarImage(
                imagePath: ImageConstant.imgBouttonParametres22x22,
                margin: EdgeInsets.only(left: 16.h),
                onTap: () {
                  onTapBouttonone(context);
                },
              ),
            ],
          ),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  Widget buildBottombar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
          navigatorKey.currentContext!,
          getCurrentRoute(type),
        );
      },
    );
  }

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

  onTapAkone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mondesContainerScreen);
  }

  onTapMoniaiebulbies(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shopScreen);
  }

  onTapPseudo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profilScreen);
  }

  onTapBouttonone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paramTresScreen);
  }

  onTapImgBacktomondes(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mondesContainerScreen);
  }
}
