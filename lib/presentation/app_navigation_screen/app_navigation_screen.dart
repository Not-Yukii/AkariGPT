import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: AppDecoration.fillWhiteA,
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "parties persos - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.partiesPersosTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "partie perso Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.partiePersoThreeScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "jeu - bleu",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.jeuBleuScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "jeu - électrique",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.jeuLectriqueScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "jeu - roche",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.jeuRocheScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "jeu - plante",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.jeuPlanteScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "jeu - feu",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.jeuFeuScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "partie multijoueur Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.partieMultijoueurFourScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "mondes - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.mondesContainerScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "multijoueur - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.multijoueurTabContainerScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "multijoueur Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.multijoueurTwoScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "arcade",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.arcadeScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "shop",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.shopScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "map eau",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.mapEauScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "map electrique",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.mapElectriqueScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "map roche",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.mapRocheScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "map plante",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.mapPlanteScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "map feu",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.mapFeuScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "connexion",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.connexionScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "inscription",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.inscriptionScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Chat Personnalisé",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.chatPersonnalisScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profil",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.profilScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "paramètres",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.paramTresScreen,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.black900,
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.blueGray400,
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: appTheme.black900,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function()? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: AppDecoration.fillWhiteA,
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.blueGray400,
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}