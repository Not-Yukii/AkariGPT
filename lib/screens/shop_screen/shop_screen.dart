import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../mondes_screen/mondes_screen.dart' as mondes;
import '../parties_perso_two_page/parties_perso_two_page.dart';
import 'widgets/shop1_item_widget.dart';
import 'widgets/shop_item_widget.dart'; 

// ignore_for_file: must_be_immutable
class ShopScreen extends StatelessWidget {
  ShopScreen({Key? key})
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
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 10.v,
            ),
            child: Column(
              children: [
                SizedBox(height: 12.v),
                _buildHead(context),
                SizedBox(height: 23.v),
                Text(
                  "Boutique",
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 20.v),
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
                    padding: EdgeInsets.all(9.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.circleBorder18,
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgShop,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    foregroundDecoration:
                        AppDecoration.gradientGrayToGray.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder18,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: AppDecoration.outlineBlack,
                          child: Text(
                            "Achat (compulsif) de Bulbies",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        SizedBox(height: 10.v),
                        _buildShopitem(context),
                        SizedBox(height: 10.v),
                        _buildColumnobtention(context),
                        SizedBox(height: 5.v)
                      ],
                    ),
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
  Widget _buildHead(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Container(
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
                            borderRadius: BorderRadius.circular(
                              3.h,
                            ),
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

  /// Section Widget
  Widget _buildShopitem(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder18,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 98.v,
          crossAxisCount: 2,
          mainAxisSpacing: 21.h,
          crossAxisSpacing: 21.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return ShopItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnobtention(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: AppDecoration.outlineBlack,
          child: Text(
            "Obtention de Bonus",
            style: theme.textTheme.titleLarge,
          ),
        ),
        SizedBox(height: 10.v),
        Container(
          decoration: AppDecoration.outlineGray400.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder18,
          ),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 98.v,
              crossAxisCount: 2,
              mainAxisSpacing: 21.h,
              crossAxisSpacing: 21.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return Shop1ItemWidget();
            },
          ),
        )
      ],
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
        return mondes.MondeScreen();
      case AppRoutes.partiesPersoTwoPage:
        return PartiesPersoTwoPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the mondesContainerScreen when the action is triggered.
  onTapAkone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mondesContainerScreen);
  }

  onTapSpeudo(BuildContext context) {}
  onTapImgBouttonone(BuildContext context) {}
}
