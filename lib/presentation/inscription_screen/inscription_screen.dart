import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

class InscriptionScreen extends StatelessWidget {
  InscriptionScreen({Key? key}) : super(key: key);

  TextEditingController namezoneoneController = TextEditingController();
  TextEditingController namezonethreeController = TextEditingController();
  TextEditingController namezonefiveController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
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
              vertical: 20.v,
            ),
            child: Column(
              children: [
                SizedBox(height: 58.v),
                CustomImageView(
                  imagePath: ImageConstant.imgAkBig,
                  height: 192.h,
                  width: 225.h,
                ),
                SizedBox(height: 80.v),
                _buildInscription(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 128.v,
      centerTitle: true,
      title: Column(
        children: [
          AppbarTitle(
            text: "Inscription",
            margin: EdgeInsets.symmetric(horizontal: 137.h),
          ),
          SizedBox(height: 18.v),
          SizedBox(
            width: 345.h,
            child: Divider(),
          ),
        ],
      ),
      styleType: Style.bgGradientnameblack900opacity047nameblack900opacity058,
    );
  }

  /// Section Widget
  Widget _buildInscription(BuildContext context) {
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
          vertical: 7.v,
        ),
        decoration: AppDecoration.outline.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder30,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 14.v),
            _buildIdentifiant(context),
            SizedBox(height: 25.v),
            _buildColumnmotdepass(context),
            SizedBox(height: 24.v),
            _buildIdentifiant1(context),
            SizedBox(height: 42.v),
            CustomElevatedButton(
              width: 161.h,
              text: "Confirmer",
              buttonStyle: CustomButtonStyles.outlineBlack,
              buttonTextStyle: CustomTextStyles.bodyLargeInter_1,
              onPressed: () {
                onTapConfirmer(context);
              },
            ),
            SizedBox(height: 3.v),
            GestureDetector(
              onTap: () {
                onTapTxtSeconnecter(context);
              },
              child: Text(
                "se connecter",
                style: CustomTextStyles.bodySmallInterGray500.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildIdentifiant(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15.h),
          child: Text(
            "identifiant",
            style: CustomTextStyles.bodySmall10,
          ),
        ),
        SizedBox(height: 1.v),
        CustomTextFormField(
          controller: namezoneoneController,
          hintText: "Entrez votre nom ici",
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildColumnmotdepass(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15.h),
          child: Text(
            "mot de passe",
            style: CustomTextStyles.bodySmall10,
          ),
        ),
        CustomTextFormField(
          controller: namezonethreeController,
          hintText: "Entrez votre mot de passe ici",
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildIdentifiant1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15.h),
          child: Text(
            "confirmation du mot de passe",
            style: CustomTextStyles.bodySmall10,
          ),
        ),
        CustomTextFormField(
          controller: namezonefiveController,
          hintText: "Confirmer votre mot de passe ici",
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }

  /// Navigates to the mondesContainerScreen when the action is triggered.
  void onTapConfirmer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mondesContainerScreen);
  }

  /// Navigates to the connexionScreen when the action is triggered.
  void onTapTxtSeconnecter(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.connexionScreen);
  }
}