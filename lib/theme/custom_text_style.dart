import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get pecita {
    return copyWith(
      fontFamily: 'Pecita',
    );
  }

  TextStyle get indieFlower {
    return copyWith(
      fontFamily: 'Indie Flower',
    );
  }

  TextStyle get patrickHand {
    return copyWith(
      fontFamily: 'Patrick Hand',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get miltonianTattoo {
    return copyWith(
      fontFamily: 'Miltonian Tattoo',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get workSans {
    return copyWith(
      fontFamily: 'Work Sans',
    );
  }

  TextStyle get custom {
    return copyWith(
      fontFamily: '?????',
    );
  }
}
/// A collection of pre-defined text styles for customizing text appearance.
/// Categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodyLarge17 => theme.textTheme.bodyLarge!.copyWith(
    fontSize: 17.fSize,
  );
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
    fontSize: 18.fSize,
  );
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
    color: appTheme.black900,
    fontSize: 17.fSize,
  );
  static get bodyLargeCustom => theme.textTheme.bodyLarge!.custom.copyWith(
    fontSize: 17.fSize,
  );
  static get bodyLargeCustom18 => theme.textTheme.bodyLarge!.custom.copyWith(
    fontSize: 18.fSize,
  );
  static get bodyLargeGray500 => theme.textTheme.bodyLarge!.copyWith(
    color: appTheme.gray500,
    fontSize: 17.fSize,
  );
  static get bodyLargeInter => theme.textTheme.bodyLarge!.inter.copyWith(
    fontSize: 19.fSize,
  );
  static get bodyLargeInter_1 => theme.textTheme.bodyLarge!.inter;
  static get bodyLargeMiltonianTattoo => theme.textTheme.bodyLarge!.miltonianTattoo.copyWith(
    fontSize: 18.fSize,
  );
  static get bodyLargePecita => theme.textTheme.bodyLarge!.pecita.copyWith(
    fontSize: 19.fSize,
  );
  static get bodyMediumCustom => theme.textTheme.bodyMedium!.custom.copyWith(
    fontSize: 13.fSize,
  );
  static get bodyMediumCustom_1 => theme.textTheme.bodyMedium!.custom;
  static get bodyMediumCustom_2 => theme.textTheme.bodyMedium!.custom;
  static get bodyMediumIndieFlower => theme.textTheme.bodyMedium!.indieFlower.copyWith(
    fontSize: 15.fSize,
  );
  static get bodyMediumIndieFlower13 => theme.textTheme.bodyMedium!.indieFlower.copyWith(
    fontSize: 13.fSize,
  );
  static get bodyMediumWorkSansBlack900 => theme.textTheme.bodyMedium!.workSans.copyWith(
    color: appTheme.black900,
  );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
    fontSize: 10.fSize,
  );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.black900,
  );
  static get bodySmallCustom => theme.textTheme.bodySmall!.custom;
  static get bodySmallCustomBlack900 => theme.textTheme.bodySmall!.custom.copyWith(
    color: appTheme.black900,
  );
  static get bodySmallIndieFlowerBlack900 => theme.textTheme.bodySmall!.indieFlower.copyWith(
    color: appTheme.black900,
  );
  static get bodySmallInterGray500 => theme.textTheme.bodySmall!.inter.copyWith(
    color: appTheme.gray500,
    fontSize: 10.fSize,
  );

  // Headline text style
  static get headlineSmallPoppins => theme.textTheme.headlineSmall!.poppins.copyWith(
    fontSize: 24.fSize,
    fontWeight: FontWeight.w700,
  );

  // Label text style
  static get labelLargeBlue20001 => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.blue20001,
    fontWeight: FontWeight.w700,
  );
  static get labelLargeBold => theme.textTheme.labelLarge!.copyWith(
    fontWeight: FontWeight.w700,
  );
  static get labelLargeBold_1 => theme.textTheme.labelLarge!.copyWith(
    fontWeight: FontWeight.w700,
  );
  static get labelLargeGreen200 => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.green200,
    fontWeight: FontWeight.w700,
  );
  static get labelLargeOrange30002 => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.orange30002,
    fontWeight: FontWeight.w700,
  );
  static get labelLargeRed300 => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.red300,
    fontWeight: FontWeight.w700,
  );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
    fontSize: 13.fSize,
    fontWeight: FontWeight.w600,
  );
  static get labelLargeYellowA20001 => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.yellowA20001,
    fontWeight: FontWeight.w700,
  );
  static get labelLarge_1 => theme.textTheme.labelLarge!;
  static get labelMedium11 => theme.textTheme.labelMedium!.copyWith(
    fontSize: 11.fSize,
  );
  static get labelMediumBlue20001 => theme.textTheme.labelMedium!.copyWith(
    color: appTheme.blue20001,
  );
  static get labelMediumCyan5001 => theme.textTheme.labelMedium!.copyWith(
    color: appTheme.cyan5001,
  );
  static get labelMediumGreen200 => theme.textTheme.labelMedium!.copyWith(
    color: appTheme.green200,
  );
  static get labelMediumOrange30002 => theme.textTheme.labelMedium!.copyWith(
    color: appTheme.orange30002,
  );
  static get labelMediumRed300 => theme.textTheme.labelMedium!.copyWith(
    color: appTheme.red300,
  );
  static get labelMediumYellowA20001 => theme.textTheme.labelMedium!.copyWith(
    color: appTheme.yellowA20001,
  );

  // Title text style
  static get titleLarge23 => theme.textTheme.titleLarge!.copyWith(
    fontSize: 23.fSize,
  );
  static get titleLargeInter => theme.textTheme.titleLarge!.inter;
  static get titleLargeMiltonianTattoo => theme.textTheme.titleLarge!.miltonianTattoo;
  static get titleLargeMiltonianTattooGray600 => theme.textTheme.titleLarge!.miltonianTattoo.copyWith(
    color: appTheme.gray600,
  );
  static get titleLargePatrickHand => theme.textTheme.titleLarge!.patrickHand;
  static get titleLargePecita => theme.textTheme.titleLarge!.pecita;
}
