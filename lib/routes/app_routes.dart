// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/arcade_screen/arcade_screen.dart';
import '../presentation/chat_personnalis_screen/chat_personnalis_screen.dart';
import '../presentation/connexion_screen/connexion_screen.dart';
import '../presentation/inscription_screen/inscription_screen.dart';
import '../presentation/jeu_bleu_screen/jeu_bleu_screen.dart';
import '../presentation/jeu_feu_screen/jeu_feu_screen.dart';
import '../presentation/jeu_lectrique_screen/jeu_lectrique_screen.dart';
import '../presentation/jeu_plante_screen/jeu_plante_screen.dart';
import '../presentation/jeu_roche_screen/jeu_roche_screen.dart';
import '../presentation/map_eau_screen/map_eau_screen.dart';
import '../presentation/map_electrique_screen/map_electrique_screen.dart';
import '../presentation/map_feu_screen/map_feu_screen.dart';
import '../presentation/map_plante_screen/map_plante_screen.dart';
import '../presentation/map_roche_screen/map_roche_screen.dart';
import '../presentation/mondes_container_screen/mondes_container_screen.dart';
import '../presentation/multijoueur_tab_container_screen/multijoueur_tab_container_screen.dart';
import '../presentation/multijoueur_two_screen/multijoueur_two_screen.dart';
import '../presentation/parametres_screen/parametres_screen.dart';
import '../presentation/partie_perso_three_screen/partie_perso_three_screen.dart';
import '../presentation/parties_persos_tab_container_screen/parties_persos_tab_container_screen.dart';
import '../presentation/profil_screen/profil_screen.dart';
import '../presentation/shop_screen/shop_screen.dart';

class AppRoutes {
  static const String partiesPersosPage = '/parties_persos_page';
  static const String partiesPersosTabContainerScreen = '/parties_persos_tab_container_screen';
  static const String partiesPersoTwoPage = '/parties_perso_two_page';
  static const String partiePersoThreeScreen = '/partie_perso_three_screen';
  static const String jeuBleuScreen = '/jeu_bleu_screen';
  static const String jeuLectriqueScreen = '/jeu_lectrique_screen';
  static const String jeuRocheScreen = '/jeu_roche_screen';
  static const String jeuPlanteScreen = '/jeu_plante_screen';
  static const String jeuFeuScreen = '/jeu_feu_screen';
  static const String partieMultijoueurFourScreen = '/partie_multijoueur_four_screen';
  static const String mondesContainerScreen = '/mondes_container_screen';
  static const String mondesPage = '/mondes_page';
  static const String multijoueurPage = '/multijoueur_page';
  static const String multijoueurTabContainerScreen = '/multijoueur_tab_container_screen';
  static const String multijoueurTwoScreen = '/multijoueur_two_screen';
  static const String arcadeScreen = '/arcade_screen';
  static const String shopScreen = '/shop_screen';
  static const String mapEauScreen = '/map_eau_screen';
  static const String mapElectriqueScreen = '/map_electrique_screen';
  static const String mapRocheScreen = '/map_roche_screen';
  static const String mapPlanteScreen = '/map_plante_screen';
  static const String mapFeuScreen = '/map_feu_screen';
  static const String connexionScreen = '/connexion_screen';
  static const String inscriptionScreen = '/inscription_screen';
  static const String chatPersonnalisScreen = '/chat_personnalis_screen';
  static const String profilScreen = '/profil_screen';
  static const String paramTresScreen = '/param_tres_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    // partiesPersosTabContainerScreen: (context) => PartiesPersosTabContainerScreen(),
    // partiePersoThreeScreen: (context) => PartiePersoThreeScreen(),
    jeuBleuScreen: (context) => JeuBleuScreen(),
    // jeuLectriqueScreen: (context) => JeuLectriqueScreen(),
    // jeuRocheScreen: (context) => JeuRocheScreen(),
    // jeuPlanteScreen: (context) => JeuPlanteScreen(),
    // jeuFeuScreen: (context) => JeuFeuScreen(),
    // partieMultijoueurFourScreen: (context) => PartieMultijoueurFourScreen(),
    mondesContainerScreen: (context) => MondesContainerScreen(),
    // multijoueurTabContainerScreen: (context) => MultijoueurTabContainerScreen(),
    // multijoueurTwoScreen: (context) => MultijoueurTwoScreen(),
    arcadeScreen: (context) => ArcadeScreen(),
    shopScreen: (context) => ShopScreen(),
    mapEauScreen: (context) => MapEauScreen(),
    mapElectriqueScreen: (context) => MapElectriqueScreen(),
    // mapRocheScreen: (context) => MapRocheScreen(),
    // mapPlanteScreen: (context) => MapPlanteScreen(),
    // mapFeuScreen: (context) => MapFeuScreen(),
    connexionScreen: (context) => ConnexionScreen(),
    inscriptionScreen: (context) => InscriptionScreen(),
    chatPersonnalisScreen: (context) => ChatPersonnalisScreen(),
    profilScreen: (context) => ProfilScreen(),
    paramTresScreen: (context) => ParamTresScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => ConnexionScreen()
  };
}