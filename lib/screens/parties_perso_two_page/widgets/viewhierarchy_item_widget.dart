import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_radio_button.dart';
// ignore_for_file: must_be_immutable

class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.v),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 6.v),
            child: Text(
              "Trier par taille :",
              style: CustomTextStyles.labelMedium11,
            ),
          ),
          Container(
            height: 12.adaptSize,
            width: 12.adaptSize,
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 3.v,
            ),
            decoration: BoxDecoration(
              color: appTheme.gray100,
              borderRadius: BorderRadius.circular(
                6.h,
              ),
              border: Border.all(
                color: appTheme.blueGray100,
                width: 4.h,
                strokeAlign: BorderSide.strokeAlignOutside,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text(
              "Croissante",
              style: CustomTextStyles.labelMedium11,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: CustomRadioButton(
              text: "Décroissante",
              value: "Décroissante",
              groupValue: radioGroup,
              textStyle: CustomTextStyles.labelMedium11,
              onChange: (value) {
                radioGroup = value;
              },
            ),
          )
        ],
      ),
    );
  }
}
