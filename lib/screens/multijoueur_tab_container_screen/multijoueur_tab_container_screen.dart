import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../screens/mondes_screen/mondes_screen.dart' as mondes;
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_title_button.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../multijoueur_page/multijoueur_page.dart';
import '../parties_perso_two_page/parties_perso_two_page.dart';

class MultijoueurTabContainerScreen extends StatefulWidget {
  const MultijoueurTabContainerScreen({Key? key}) : super(key: key);

  @override
  MultijoueurTabContainerScreenState createState() =>
      MultijoueurTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class MultijoueurTabContainerScreenState
    extends State<MultijoueurTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

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
                Column(
                  children: [
                    SizedBox(height: 20.v),
                    Divider(indent: 15.h, endIndent: 15.h),
                    SizedBox(height: 8.v),
                    Container(
                      decoration: AppDecoration.outlineBlack,
                      child: Text(
                        "Créer une partie Multijoueur :",
                        style: CustomTextStyles.bodyLarge18,
                      ),
                    ),
                    SizedBox(height: 21.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 44.h),
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
                          colors: [
                            appTheme.gray90002,
                            appTheme.gray800Ed,
                            appTheme.gray60001.withOpacity(0),
                          ],
                        ),
                        corners: Corners(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        child: Container(
                          decoration: AppDecoration.outline.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder30,
                          ),
                          child: Container(
                            height: 29.v,
                            width: 287.h,
                            decoration: BoxDecoration(
                              color: appTheme.blueGray800,
                              borderRadius: BorderRadius.circular(14.h),
                            ),
                            child: TabBar(
                              controller: tabviewController,
                              labelPadding: EdgeInsets.zero,
                              labelColor: appTheme.black900,
                              labelStyle: TextStyle(
                                fontSize: 12.fSize,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                              unselectedLabelColor: appTheme.whiteA700,
                              unselectedLabelStyle: TextStyle(
                                fontSize: 12.fSize,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                              indicatorPadding: EdgeInsets.all(2.5.h),
                              indicator: BoxDecoration(
                                color: appTheme.whiteA700,
                                borderRadius: BorderRadius.circular(12.h),
                              ),
                              tabs: [
                                Tab(child: Text("Nom de la Room : ")),
                                Tab(child: Text("Room 1")),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 530.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [MultijoueurPage(), MultijoueurPage()],
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
                  margin: EdgeInsets.only(left: 84.h, top: 2.v),
                  decoration: AppDecoration.outlineBlack,
                  child: Text(
                    "Parties Multijoueur",
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
}
