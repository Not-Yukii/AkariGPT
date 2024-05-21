import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../parties_perso_two_page/parties_perso_two_page.dart';
import 'widgets/userprofile_item_widget.dart'; // ignore_for_file: must_be_immutable

class MondeScreen extends StatelessWidget {
  MondeScreen({Key? key}) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
          child: Navigator(
            key: navigatorKey,
            initialRoute: AppRoutes.mondesPage,
            onGenerateRoute: (routeSetting) {
              return PageRouteBuilder(
                pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!),
                transitionDuration: Duration(seconds: 0),
              );
            },
          ),
        ),
        bottomNavigationBar: _buildBottombar(context),
      ),
    );
  }

  Widget _buildBottombar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        String route = getCurrentRoute(type);
        Navigator.pushNamed(navigatorKey.currentContext!, route);
      },
    );
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Carteico25x26:
        return AppRoutes.mondesPage;
      case BottomBarEnum.Settings:
        return AppRoutes.paramTresScreen;
      case BottomBarEnum.Shopico:
        return AppRoutes.shopScreen;
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
}

class MondesPage extends StatelessWidget {
  const MondesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                _buildHead(context),
                SizedBox(height: 22.v),
                _buildColumnmodeavent(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHead(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          GestureDetector(
            onTap: () {
              onTapMonaiebulbies(context);
            },
            child: Container(
              padding: EdgeInsets.all(8.h),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder18,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMonais320x20,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      top: 3.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "10 k",
                      style: CustomTextStyles.bodyMediumCustom_1,
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              onTapSpeudo(context);
            },
            child: Container(
              width: 135.h,
              padding: EdgeInsets.symmetric(
                horizontal: 7.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder18,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse720x20,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 31.h),
                    child: Text(
                      "Steve",
                      style: theme.textTheme.bodyMedium,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 90.h,
            padding: EdgeInsets.symmetric(vertical: 7.v),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 22.adaptSize,
                  width: 22.adaptSize,
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
                      )
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgBouttonParametres22x22,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  onTap: () {
                    onTapImgBouttonone(context);
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildColumnmodeavent(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Column(
        children: [
          Text(
            "Mode Aventure",
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 21.v),
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
              colors: [appTheme.gray90002, appTheme.gray700],
            ),
            corners: Corners(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            child: Container(
              padding: EdgeInsets.all(10.h),
              decoration: AppDecoration.gradientGrayToGray.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder18,
              ),
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 10.v,
                  );
                },
                itemCount: 5,
                itemBuilder: (context, index) {
                  return UserprofileItemWidget(
                    onTapUserprofile: () {
                      onTapUserprofile(context);
                    },
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  onTapMonaiebulbies(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shopScreen);
  }

  onTapSpeudo(BuildContext context) {}
  onTapImgBouttonone(BuildContext context) {}
  onTapUserprofile(BuildContext context) {}
}
