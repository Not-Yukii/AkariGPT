import 'package:flutter/material.dart';
import '../../core/app_export.dart';

enum Style { bgGradientnameblack900opacity047nameblack900opacity058, bgShadow }

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(
    {Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions})
    : super(
      key: key,
    );

  final double? height;
  final Style? styleType;
  final double? leadingWidth;
  final Widget? leading;
  final Widget? title;
  final bool? centerTitle;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 36.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
    SizeUtils.width,
    height ?? 36.v,
  );

  _getStyle() {
    switch (styleType) {
      case Style.bgGradientnameblack900opacity047nameblack900opacity058:
        return Container(
          height: 2.v,
          width: 345.h,
          margin: EdgeInsets.fromLTRB(15.h, 45.33.v, 15.h, 8.669998.v),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.06, 0),
              end: Alignment(0.99, 0),
              colors: [
                appTheme.black900.withOpacity(0.47),
                appTheme.gray60084,
                appTheme.black900.withOpacity(0.58)
              ],
            ),
          ),
        );
      case Style.bgShadow:
        return Container(
          height: 36.v,
          width: double.maxFinite,
          decoration: BoxDecoration(),
        );
      default:
        return null;
    }
  }
}