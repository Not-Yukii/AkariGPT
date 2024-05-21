import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_title_button.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../parties_perso_two_page/parties_perso_two_page.dart';
import '../mondes_screen/mondes_screen.dart' as mondes;
import 'widgets/listajouterdela1_item_widget.dart';
import 'widgets/themeselection1_item_widget.dart';

class MultijoueurScreen extends StatefulWidget {
  const MultijoueurScreen({Key? key}) : super(key: key);

  @override
  MultijoueurScreenState createState() => MultijoueurScreenState();
}

class MultijoueurScreenState extends State<MultijoueurScreen> with TickerProviderStateMixin, AutomaticKeepAliveClientMixin<MultijoueurScreen> {
  late TabController tabviewController;
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
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
                              margin: EdgeInsets.only(right: 16.h, bottom: 15.v),
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

class MultijoueurPage extends StatefulWidget {
  const MultijoueurPage({Key? key}) : super(key: key);

  @override
  MultijoueurPageState createState() => MultijoueurPageState();
}

class MultijoueurPageState extends State<MultijoueurPage> with AutomaticKeepAliveClientMixin<MultijoueurPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.h),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.h,
                          vertical: 4.v,
                        ),
                        decoration: AppDecoration.fillBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder14,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 2.v),
                              child: Text(
                                "Nombre de joueurs :",
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Container(
                              width: 40.h,
                              margin: EdgeInsets.only(
                                left: 5.h,
                                top: 2.v,
                                bottom: 2.v,
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              decoration: AppDecoration.fillWhiteA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder7,
                              ),
                              child: Text(
                                "2",
                                style: CustomTextStyles.bodySmallBlack900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12.v),
                      SizedBox(
                        height: 32.v,
                        width: 177.h,
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                margin: EdgeInsets.only(bottom: 3.v),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.h,
                                  vertical: 4.v,
                                ),
                                decoration: AppDecoration.fillBlueGray.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder14,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 1.v),
                                      child: Text(
                                        "Taille :",
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                    Container(
                                      width: 40.h,
                                      margin: EdgeInsets.only(
                                        left: 5.h,
                                        top: 2.v,
                                        bottom: 2.v,
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 12.h),
                                      decoration: AppDecoration.fillWhiteA.copyWith(
                                        borderRadius: BorderRadiusStyle.roundedBorder7,
                                      ),
                                      child: Text(
                                        "25",
                                        style: CustomTextStyles.bodySmallBlack900,
                                      ),
                                    ),
                                    Container(
                                      width: 40.h,
                                      margin: EdgeInsets.only(
                                        left: 30.h,
                                        top: 2.v,
                                        bottom: 2.v,
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 12.h),
                                      decoration: AppDecoration.fillWhiteA.copyWith(
                                        borderRadius: BorderRadiusStyle.roundedBorder7,
                                      ),
                                      child: Text(
                                        "25",
                                        style: CustomTextStyles.bodySmallBlack900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 58.h),
                                child: Text(
                                  "x",
                                  style: theme.textTheme.headlineSmall,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 9.v),
                      _buildListAjouterDela(context),
                      SizedBox(height: 12.v),
                      _buildThemeSelection(context),
                      SizedBox(height: 12.v),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 44.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.h,
                          vertical: 8.v,
                        ),
                        decoration: AppDecoration.outlineBlack900.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder18,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomElevatedButton(
                              height: 36.v,
                              width: 113.h,
                              text: "Create Room",
                              buttonStyle: CustomButtonStyles.outlineBlack,
                              buttonTextStyle: CustomTextStyles.labelLargeSemiBold,
                            ),
                            Container(
                              width: 97.h,
                              margin: EdgeInsets.only(left: 7.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 13.h,
                                vertical: 8.v,
                              ),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder18,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Text(
                                      "Prix : 10",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgMonais3,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 17.v),
                      _buildColumnListedes(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildListAjouterDela(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 62.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 5.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return ListajouterdelaiItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildThemeSelection(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 9.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 1.v,
          );
        },
        itemCount: 1,
        itemBuilder: (context, index) {
          return Themeselection1ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnListedes(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            onTapTxtListedes(context);
          },
          child: Container(
            decoration: AppDecoration.outlineBlack,
            child: Text(
              "Liste des parties multijoueur en cours",
              style: CustomTextStyles.bodyLarge18,
            ),
          ),
        ),
        SizedBox(height: 11.v),
        GestureDetector(
          onTap: () {
            onTapRooms(context);
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 5.v,
            ),
            decoration: AppDecoration.outline.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder30,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: _buildNameZone(
                    context,
                    roomsmallone: "Room Small : 10x10 - Feu - 7/10",
                    rejoindreOne: "Rejoindre",
                  ),
                ),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: _buildNameZone(
                    context,
                    roomsmallone: "Room Small : 40x20 - Eau - 5/10",
                    rejoindreOne: "Rejoindre",
                  ),
                ),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: _buildNameZone(
                    context,
                    roomsmallone: "Room Large : 70x70 - Plante - 3/8",
                    rejoindreOne: "Rejoindre",
                  ),
                ),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: _buildNameZone(
                    context,
                    roomsmallone: "Room Extra : 120x120 - Foudre - 1/5",
                    rejoindreOne: "Rejoindre",
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildNameZone(
    BuildContext context, {
    required String roomsmallone,
    required String rejoindreOne,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3.v),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v, bottom: 1.v),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: roomsmallone,
                    style: theme.textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: " x ",
                    style: CustomTextStyles.bodyLargePecita,
                  ),
                  TextSpan(
                    text: "20 - Eau - 5/10",
                    style: CustomTextStyles.labelLargeBlue20001,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            width: 75.h,
            padding: EdgeInsets.symmetric(
              horizontal: 9.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.outlineBlack900.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Text(
              rejoindreOne,
              style: theme.textTheme.labelLarge!.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the multijoueurTwoScreen when the action is triggered.
  onTapTxtListedes(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.multijoueurTwoScreen);
  }

  /// Navigates to the multijoueurTwoScreen when the action is triggered.
  onTapRooms(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.multijoueurTwoScreen);
  }
}
