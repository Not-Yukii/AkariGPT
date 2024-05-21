import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class ConnexionScreen extends StatelessWidget {
  ConnexionScreen({Key? key}) : super(key: key);

  TextEditingController enteryournameheController = TextEditingController();
  TextEditingController enteryourpasswoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
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
            padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 20.v),
            child: Column(
              children: [
                SizedBox(height: 59.v),
                CustomImageView(
                  imagePath: ImageConstant.imgAkBig,
                  height: 192.v,
                  width: 225.h,
                ),
                SizedBox(height: 80.v),
                _buildColumnIdentifia(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 127.v,
      centerTitle: true,
      title: Column(
        children: [
          AppbarTitle(
            text: "Connexion",
            margin: EdgeInsets.symmetric(horizontal: 137.h),
          ),
          SizedBox(height: 19.v),
          SizedBox(
            width: 345.h,
            child: Divider(),
          ),
        ],
      ),
      styleType: Style.bgGradientnameblack900opacity047nameblack900opacity058,
    );
  }

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
          controller: enteryournameheController,
          hintText: "Entrez votre nom ici",
        ),
      ],
    );
  }

  Widget _buildColumnMotDePasse(BuildContext context) {
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
          controller: enteryourpasswoController,
          hintText: "Entrez votre mot de passe ici",
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }

  Widget _buildColumnIdentifia(BuildContext context) {
    return OutlineGradientButton(
      padding: EdgeInsets.only(left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
      strokeWidth: 1.h,
      gradient: LinearGradient(
        begin: Alignment(0.5, 0),
        end: Alignment(0.5, 1),
        colors: [
          appTheme.gray90002,
          appTheme.gray800Ed,
          appTheme.gray60001.withOpacity(0)
        ],
      ),
      corners: Corners(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 32.v),
        decoration: AppDecoration.outline.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder30,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 13.v),
            _buildIdentifiant(context),
            SizedBox(height: 45.v),
            _buildColumnMotDePasse(context),
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
                onTapTxtsinscrire(context);
              },
              child: Text(
                "s’inscrire",
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

  /// Navigates to the mondesContainerScreen when the action is triggered.
  void onTapConfirmer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mondesScreen);
  }

  /// Navigates to the inscriptionScreen when the action is triggered.
  void onTapTxtsinscrire(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.inscriptionScreen);
  }
}