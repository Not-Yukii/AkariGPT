import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'widgets/listajouterdela_item_widget.dart';
import 'widgets/themeselection_item_widget.dart'; // ignore_for_file: must_be_immutable

class PartiesPersosPage extends StatefulWidget {
  const PartiesPersosPage({Key? key}) : super(key: key);

  @override
  PartiesPersosPageState createState() => PartiesPersosPageState();
}

class PartiesPersosPageState extends State<PartiesPersosPage> with AutomaticKeepAliveClientMixin<PartiesPersosPage> {
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
                      SizedBox(height: 32.v),
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
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 9.v),
                      _buildListajouterdela(context),
                      SizedBox(height: 12.v),
                      _buildThemeselection(context),
                      SizedBox(height: 12.v),
                      CustomElevatedButton(
                        height: 36.v,
                        width: 113.h,
                        text: "Create Room",
                        buttonStyle: CustomButtonStyles.outlineBlack,
                        buttonTextStyle: CustomTextStyles.labelLargeSemiBold,
                      ),
                      SizedBox(height: 21.v),
                      Container(
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "Mes grilles sauvegardées",
                          style: CustomTextStyles.bodyLarge18,
                        ),
                      ),
                      SizedBox(height: 6.v),
                      _buildRooms(context),
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
  Widget _buildListajouterdela(BuildContext context) {
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
          return ListajouterdelaItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildThemeselection(BuildContext context) {
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
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 1.v,
          );
        },
        itemCount: 1,
        itemBuilder: (context, index) {
          return ThemeselectionItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRooms(BuildContext context) {
    return OutlineGradientButton(
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
        padding: EdgeInsets.symmetric(
          horizontal: 9.h,
          vertical: 8.v,
        ),
        decoration: AppDecoration.outline.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder30,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 2.v),
            _buildNameZone(
              context,
              grillesmallone: "Grille Small : 10x10 - Feu ",
              reprendreOne: "Reprendre",
            ),
            SizedBox(height: 6.v),
            _buildNameZone(
              context,
              grillesmallone: "Grille Small : 40x20 - Eau ",
              reprendreOne: "Reprendre",
            ),
            SizedBox(height: 6.v),
            _buildNameZone(
              context,
              grillesmallone: "Grille Medium : 70x70 - Plante ",
              reprendreOne: "Reprendre",
            ),
            SizedBox(height: 6.v),
            _buildNameZone(
              context,
              grillesmallone: "Grille Medium : 100x100 - Blanc ",
              reprendreOne: "Reprendre",
            ),
            SizedBox(height: 6.v),
            _buildNameZone(
              context,
              grillesmallone: "Grille Large : 120x120 - Foudre",
              reprendreOne: "Reprendre",
            ),
            SizedBox(height: 6.v),
            _buildNameZone(
              context,
              grillesmallone: "Grille Large : 150x130 - Roche",
              reprendreOne: "Reprendre",
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildNameZone(
    BuildContext context, {
    required String grillesmallone,
    required String reprendreOne,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 1.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: grillesmallone,
                    style: theme.textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: " x ",
                    style: CustomTextStyles.bodyLargePecita,
                  ),
                  TextSpan(
                    text: "20 - ",
                    style: theme.textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: "Eau",
                    style: CustomTextStyles.labelLargeBlue20001,
                  ),
                  TextSpan(
                    text: " ",
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            width: 75.h,
            padding: EdgeInsets.symmetric(
              horizontal: 5.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.outlineBlack900.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Text(
              reprendreOne,
              style: theme.textTheme.labelLarge!.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
