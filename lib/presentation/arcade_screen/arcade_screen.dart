import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../mondes_page/mondes_page.dart';
import '../parties_perso_two_page/parties_perso_two_page.dart';
import 'widgets/button_item_widget.dart'; // ignore_for_file: must_be_immutable

class ArcadeScreen extends StatelessWidget {
  ArcadeScreen({Key? key})
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
            padding: EdgeInsets.symmetric(vertical: 22.v),
            child: Column(
              children: [
                _buildHead(context),
                SizedBox(height: 22.v),
                Text(
                  "Mode Aventure",
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 21.v),
                Divider(
                  indent: 13.h,
                  endIndent: 13.h,
                ),
                SizedBox(height: 23.v),
                _buildButton(context),
                SizedBox(height: 25.v),
                _buildColumnqutes(context),
                SizedBox(height: 5.v)
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
      margin: EdgeInsets.symmetric(horizontal: 13.h),
      decoration: AppDecoration.outlineBlack,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
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
              onTapMonaiebulbies(context);
            },
            child: Container(
              width: 64.h,
              margin: EdgeInsets.only(left: 8.h),
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
              margin: EdgeInsets.only(left: 8.h),
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
            margin: EdgeInsets.only(left: 8.h),
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
  Widget _buildButton(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 220.v,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 22.h,
            );
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            return ButtonItemWidget(
              onTapButton: () {
                onTapButton(context);
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnqutes(BuildContext context) {
    return Container(
      width: 329.h,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 26.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Qu",
                  style: theme.textTheme.titleLarge,
                ),
                TextSpan(
                  text: "êtes quotidiennes",
                  style: CustomTextStyles.bodyLargeCustom18,
                )
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 11.v),
          Text(
            "Terminer trois grilles en Campagne :",
            style: CustomTextStyles.bodyMediumCustom_1,
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(right: 56.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEye,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.only(top: 10.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    bottom: 4.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 6.h),
                        child: Text(
                          "67%",
                          style: CustomTextStyles.bodyMediumCustom,
                        ),
                      ),
                      SizedBox(height: 1.v),
                      Container(
                        height: 6.v,
                        width: 142.h,
                        decoration: BoxDecoration(
                          color: appTheme.teal4000c,
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                          child: LinearProgressIndicator(
                            value: 0.6,
                            backgroundColor: appTheme.teal4000c,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              appTheme.teal4000c.withOpacity(0.64),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 2.v,
                    ),
                    child: _buildRowtenOne(
                      context,
                      tenOne: "10",
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 14.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Terminer trois  grilles en Grille Personnalis",
                  style: CustomTextStyles.bodyMediumCustom_2,
                ),
                TextSpan(
                  text: "ée :",
                  style: CustomTextStyles.bodySmallCustom,
                )
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(right: 54.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEye,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.only(top: 10.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    bottom: 4.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 6.h),
                        child: Text(
                          "67%",
                          style: CustomTextStyles.bodyMediumCustom,
                        ),
                      ),
                      SizedBox(height: 1.v),
                      Container(
                        height: 6.v,
                        width: 142.h,
                        decoration: BoxDecoration(
                          color: appTheme.teal4000c,
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                          child: LinearProgressIndicator(
                            value: 0.6,
                            backgroundColor: appTheme.teal4000c,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              appTheme.teal4000c.withOpacity(0.64),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 26.h,
                      top: 2.v,
                    ),
                    child: _buildRowtenOne(
                      context,
                      tenOne: "10",
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "Finissez quatre grilles multijoueur :",
              style: CustomTextStyles.bodyMediumCustom_1,
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(right: 55.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMaximize,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.only(top: 11.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    bottom: 4.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 6.h),
                        child: Text(
                          "75%",
                          style: CustomTextStyles.bodyMediumCustom,
                        ),
                      ),
                      SizedBox(height: 2.v),
                      Container(
                        height: 6.v,
                        width: 142.h,
                        decoration: BoxDecoration(
                          color: appTheme.indigo50001.withOpacity(0.42),
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                          child: LinearProgressIndicator(
                            value: 0.75,
                            backgroundColor:
                                appTheme.indigo50001.withOpacity(0.42),
                            valueColor: AlwaysStoppedAnimation<Color>(
                              appTheme.indigo50001.withOpacity(0.64),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 25.h,
                      top: 2.v,
                      bottom: 3.v,
                    ),
                    child: _buildRowtenOne(
                      context,
                      tenOne: "10",
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 16.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Qu",
                  style: theme.textTheme.titleLarge,
                ),
                TextSpan(
                  text: "êtes hebdomadaires",
                  style: CustomTextStyles.bodyLargeCustom18,
                )
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 9.v),
          Text(
            "Récupérez 100 Bulbies :",
            style: CustomTextStyles.bodyMediumCustom_1,
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(right: 51.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTicket,
                  height: 14.v,
                  width: 15.h,
                  margin: EdgeInsets.only(top: 11.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    bottom: 4.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 7.h),
                        child: Text(
                          "34%",
                          style: CustomTextStyles.bodyMediumCustom,
                        ),
                      ),
                      SizedBox(height: 2.v),
                      Container(
                        height: 6.v,
                        width: 145.h,
                        decoration: BoxDecoration(
                          color: appTheme.orange30001.withOpacity(0.42),
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                          child: LinearProgressIndicator(
                            value: 0.31,
                            backgroundColor:
                                appTheme.orange30001.withOpacity(0.42),
                            valueColor: AlwaysStoppedAnimation<Color>(
                              appTheme.orange30001.withOpacity(0.64),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 50.h,
                  margin: EdgeInsets.only(
                    left: 22.h,
                    top: 4.v,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 4.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder18,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 2.v,
                          bottom: 1.v,
                        ),
                        child: Text(
                          "15",
                          style: CustomTextStyles.bodySmallCustomBlack900,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgMonais320x20,
                        height: 16.v,
                        width: 18.h,
                        margin: EdgeInsets.only(left: 5.h),
                      )
                    ],
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

  /// Common widget
  Widget _buildRowtenOne(
    BuildContext context, {
    required String tenOne,
  }) {
    return Container(
      width: 46.h,
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 1.v,
            ),
            child: Text(
              tenOne,
              style: CustomTextStyles.bodySmallCustomBlack900.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMonais320x20,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(left: 4.h),
          )
        ],
      ),
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

  /// Navigates to the mondesContainerScreen when the action is triggered.
  onTapAkone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mondesContainerScreen);
  }

  /// Navigates to the shopScreen when the action is triggered.
  onTapMonaiebulbies(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shopScreen);
  }

  onTapSpeudo(BuildContext context) {}
  onTapImgBouttonone(BuildContext context) {}
  onTapButton(BuildContext context) {}
}
