import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';

class ParamTresScreen extends StatelessWidget {
  const ParamTresScreen({Key? key}) : super(key: key);

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
              horizontal: 15.h,
              vertical: 26.v,
            ),
            child: Column(
              children: [
                Divider(),
                SizedBox(height: 35.v),
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
                      horizontal: 3.h,
                      vertical: 7.v,
                    ),
                    decoration: AppDecoration.outline.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder30,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Paramètres",
                          style: CustomTextStyles.titleLargeInter,
                        ),
                        SizedBox(height: 22.v),
                        Text(
                          "Volume :",
                          style: CustomTextStyles.titleLargeMiltonianTattoo,
                        ),
                        SizedBox(height: 5.v),
                        _buildBarre(context),
                        SizedBox(height: 1.v),
                        Text(
                          "Effets sonores :",
                          style: CustomTextStyles.titleLargeMiltonianTattoo,
                        ),
                        SizedBox(height: 5.v),
                        _buildBarre1(context),
                        SizedBox(height: 1.v),
                        Text(
                          "Musique :",
                          style: CustomTextStyles.titleLargeMiltonianTattoo,
                        ),
                        SizedBox(height: 3.v),
                        _buildBarre2(context),
                        SizedBox(height: 22.v),
                        Text(
                          "Thème :",
                          style: CustomTextStyles.titleLargeMiltonianTattoo,
                        ),
                        SizedBox(height: 23.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 80.h,
                            right: 66.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Text(
                                  "Light",
                                  style: CustomTextStyles
                                      .titleLargeMiltonianTattooGray600,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 2.v),
                                child: Text(
                                  "Dark",
                                  style: CustomTextStyles
                                      .titleLargeMiltonianTattoo,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 21.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 29.h,
                            right: 15.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 5.v,
                                  bottom: 1.v,
                                ),
                                child: Text(
                                  "Changer de compte :",
                                  style: CustomTextStyles
                                      .bodyLargeMiltonianTattoo,
                                ),
                              ),
                              CustomElevatedButton(
                                height: 29.v,
                                width: 105.h,
                                text: "Déconnexion",
                                margin: EdgeInsets.only(left: 9.h),
                                buttonStyle: CustomButtonStyles.fillBlueGrayTL14,
                                onPressed: () {
                                  onTapDconnexion(context);
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 21.v),
                        SizedBox(height: 5.v),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 95.v,
      leadingWidth: 64.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.only(
          left: 51.h,
          top: 17.v,
          bottom: 17.v,
        ),
        onTap: () {
          onTapVectrone(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgLogoParametre,
      ),
    );
  }

  Widget _buildBarre(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPngClipartLou,
            height: 27.v,
            width: 43.h,
            margin: EdgeInsets.symmetric(vertical: 6.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Slider(
              value: 0.0,
              min: 0.0,
              max: 100.0,
              onChanged: (value) {},
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 6.v,
              bottom: 6.v,
            ),
            child: Text(
              "60%",
              style: CustomTextStyles.titleLargeMiltonianTattoo,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBarre1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPngClipartLou27x43,
            height: 27.v,
            width: 43.h,
            margin: EdgeInsets.symmetric(vertical: 5.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Slider(
              value: 0.0,
              min: 0.0,
              max: 100.0,
              onChanged: (value) {},
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 5.v,
              bottom: 5.v,
            ),
            child: Text(
              "60%",
              style: CustomTextStyles.titleLargeMiltonianTattoo,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBarre2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPngClipartLou,
            height: 27.v,
            width: 43.h,
            margin: EdgeInsets.symmetric(vertical: 6.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Slider(
              value: 0.0,
              min: 0.0,
              max: 100.0,
              onChanged: (value) {},
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 6.v,
              bottom: 6.v,
            ),
            child: Text(
              "60%",
              style: CustomTextStyles.titleLargeMiltonianTattoo,
            ),
          ),
        ],
      ),
    );
  }

  void onTapVectrone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mondesContainerScreen);
  }

  void onTapDconnexion(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.connexionScreen);
  }
}