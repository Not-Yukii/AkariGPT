import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_radio_button.dart';
import '../mondes_page/mondes_page.dart';
import '../parties_perso_two_page/parties_perso_two_page.dart';

// ignore_for_file: must_be_immutable
class ChatPersonnalisScreen extends StatelessWidget {
  ChatPersonnalisScreen({Key? key}) : super(key: key);

  String radioGroup = "";

  List<String> radioList = [
    "msg_vous_ceci_est",
    "msg_general_ce_chat",
    "msg_vous_ceci_est",
    "msg_general_ce_chat",
    "msg_vous_ceci_est",
    "msg_general_ce_chat",
    "msg_vous_ceci_est",
    "msg_general_ce_chat",
    "msg_vous_ceci_est",
    "msg_general_ce_chat",
    "msg_vous_ceci_est",
    "msg_general_ce_chat2"
  ];

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
                Divider(
                  indent: 16.h,
                  endIndent: 16.h,
                ),
                SizedBox(height: 20.v),
                _buildHead(context),
                SizedBox(height: 22.v),
                Text(
                  "Chat Général",
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 21.v),
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
                    colors: [appTheme.gray90002, appTheme.gray60001],
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 8.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 56.h,
                            right: 22.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discutez avec d’autres joueurs !",
                                style: theme.textTheme.bodyLarge,
                              ),
                              Spacer(),
                              CustomImageView(
                                imagePath: ImageConstant.imgProfilIco,
                                height: 19.adaptSize,
                                width: 19.adaptSize,
                                margin: EdgeInsets.only(bottom: 4.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 2.h,
                                  bottom: 5.v,
                                ),
                                child: Text(
                                  "153",
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8.v),
                        _buildZonedechat(context),
                        SizedBox(height: 10.v),
                        _buildMessage(context),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottombar(context),
        floatingActionButton: _buildFloatingactionb(context),
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
                  image: AssetImage(ImageConstant.imgAk),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              onTapMonaiebublies(context);
            },
            child: Container(
              width: 64.h,
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.all(8.h),
              decoration: AppDecoration.fillBluegray90001.copyWith(
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
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 90.h,
            margin: EdgeInsets.only(left: 8.h),
            padding: EdgeInsets.symmetric(vertical: 7.v),
            decoration: AppDecoration.fillBluegray90001.copyWith(
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
                      ),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildZonedechat(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 23.v,
            right: 122.h,
          ),
          child: CustomRadioButton(
            text: "vous : Ceci est un chat général",
            value: radioList[0],
            groupValue: radioGroup,
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 191.h,
            right: 10.h,
          ),
          child: CustomRadioButton(
            width: 174.h,
            text: "Général ce chat est !",
            value: radioList[1],
            groupValue: radioGroup,
            textStyle: CustomTextStyles.bodyLarge17,
            isRightCheck: true,
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 5.v,
            right: 122.h,
          ),
          child: CustomRadioButton(
            text: "vous : Ceci est un chat général",
            value: radioList[2],
            groupValue: radioGroup,
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 191.h,
            right: 10.h,
          ),
          child: CustomRadioButton(
            width: 174.h,
            text: "Général ce chat est !",
            value: radioList[3],
            groupValue: radioGroup,
            textStyle: CustomTextStyles.bodyLarge17,
            isRightCheck: true,
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 5.v,
            right: 122.h,
          ),
          child: CustomRadioButton(
            text: "vous : Ceci est un chat général",
            value: radioList[4],
            groupValue: radioGroup,
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 191.h,
            right: 10.h,
          ),
          child: CustomRadioButton(
            width: 174.h,
            text: "Général ce chat est !",
            value: radioList[5],
            groupValue: radioGroup,
            textStyle: CustomTextStyles.bodyLarge17,
            isRightCheck: true,
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 5.v,
            right: 122.h,
          ),
          child: CustomRadioButton(
            text: "vous : Ceci est un chat général",
            value: radioList[6],
            groupValue: radioGroup,
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 191.h,
            right: 10.h,
          ),
          child: CustomRadioButton(
            width: 174.h,
            text: "Général ce chat est !",
            value: radioList[7],
            groupValue: radioGroup,
            textStyle: CustomTextStyles.bodyLarge17,
            isRightCheck: true,
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 5.v,
            right: 122.h,
          ),
          child: CustomRadioButton(
            text: "vous : Ceci est un chat général",
            value: radioList[8],
            groupValue: radioGroup,
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 191.h,
            right: 10.h,
          ),
          child: CustomRadioButton(
            width: 174.h,
            text: "Général ce chat est !",
            value: radioList[9],
            groupValue: radioGroup,
            textStyle: CustomTextStyles.bodyLarge17,
            isRightCheck: true,
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 5.v,
            right: 122.h,
          ),
          child: CustomRadioButton(
            text: "vous : Ceci est un chat général",
            value: radioList[10],
            groupValue: radioGroup,
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 191.h,
            right: 10.h,
          ),
          child: CustomRadioButton(
            width: 174.h,
            text: "Général ce chat est !",
            value: radioList[11],
            groupValue: radioGroup,
            textStyle: CustomTextStyles.bodyLarge17,
            isRightCheck: true,
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 5.v,
            right: 122.h,
          ),
          child: CustomRadioButton(
            text: "vous : Ceci est un chat général",
            value: radioList[12],
            groupValue: radioGroup,
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 191.h,
            right: 10.h,
          ),
          child: CustomRadioButton(
            width: 174.h,
            text: "Général ce chat est !",
            value: radioList[13],
            groupValue: radioGroup,
            textStyle: CustomTextStyles.bodyLarge17,
            isRightCheck: true,
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 5.v,
            right: 122.h,
          ),
          child: CustomRadioButton(
            text: "vous : Ceci est un chat général",
            value: radioList[14],
            groupValue: radioGroup,
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 191.h,
            right: 10.h,
          ),
          child: CustomRadioButton(
            width: 174.h,
            text: "Général ce chat est !",
            value: radioList[15],
            groupValue: radioGroup,
            textStyle: CustomTextStyles.bodyLarge17,
            isRightCheck: true,
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 5.v,
            right: 122.h,
          ),
          child: CustomRadioButton(
            text: "vous : Ceci est un chat général",
            value: radioList[16],
            groupValue: radioGroup,
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 191.h,
            right: 10.h,
          ),
          child: CustomRadioButton(
            width: 174.h,
            text: "Général ce chat est !",
            value: radioList[17],
            groupValue: radioGroup,
            textStyle: CustomTextStyles.bodyLarge17,
            isRightCheck: true,
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMessage(BuildContext context) {
    return Container(
      width: double.maxFinite,
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
  Widget _buildBottombar(BuildContext context) {
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
  Widget _buildFloatingactionb(BuildContext context) {
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
onTapMonaiebublies(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.shopScreen);
}

/// Navigates to the profilsScreen when the action is triggered.
onTapPseudo(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.profilScreen);
}

/// Navigates to the paramTresScreen when the action is triggered.
onTapImgBouttonone(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.paramTresScreen);
}