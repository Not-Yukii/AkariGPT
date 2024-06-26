// ignore_for_file: unused_import

import 'dart:js';

import 'package:flutter/material.dart';

import '../screens/app_navigation_screen/app_navigation_screen.dart';
import '../screens/arcade_screen/arcade_screen.dart';
import '../screens/chat_personnalis_screen/chat_personnalis_screen.dart';
import '../screens/connexion_screen/connexion_screen.dart';
import '../screens/inscription_screen/inscription_screen.dart';
import '../screens/jeu_bleu_screen/jeu_bleu_screen.dart';
import '../screens/jeu_feu_screen/jeu_feu_screen.dart';
import '../screens/jeu_electrique_screen/jeu_electrique_screen.dart';
import '../screens/jeu_plante_screen/jeu_plante_screen.dart';
import '../screens/jeu_roche_screen/jeu_roche_screen.dart';
import '../screens/map_eau_screen/map_eau_screen.dart';
import '../screens/map_electrique_screen/map_electrique_screen.dart';
import '../screens/map_feu_screen/map_feu_screen.dart';
import '../screens/map_plante_screen/map_plante_screen.dart';
import '../screens/map_roche_screen/map_roche_screen.dart';
import '../screens/multijoueur_screen/multijoueur_screen.dart';
import '../screens/multijoueur_two_screen/multijoueur_two_screen.dart';
import '../screens/parametres_screen/parametres_screen.dart';
import '../screens/partie_multijoueur_four_screen/partie_multijoueur_four_screen.dart';
import '../screens/partie_perso_three_screen/partie_perso_three_screen.dart';
import '../screens/parties_persos_tab_container_screen/parties_persos_tab_container_screen.dart';
import '../screens/profil_screen/profil_screen.dart';
import '../screens/shop_screen/shop_screen.dart';
import '../screens/mondes_screen/mondes_screen.dart';

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
  static const String mondesScreen = '/mondes_screen';
  static const String multijoueurScreen = '/multijoueur_screen';
  static const String initialRoute = '/initialRoute'; // connection screen

  static Map<String, WidgetBuilder> routes = {
    mondesScreen: (context) => MondeScreen(),
    partiesPersosTabContainerScreen: (context) => PartiesPersosTabContainerScreen(),
    partiePersoThreeScreen: (context) => PartiePersoThreeScreen(),
    jeuBleuScreen: (context) => JeuBleuScreen(),
    jeuLectriqueScreen: (context) => JeulectriqueScreen(),
    jeuRocheScreen: (context) => JeuRocheScreen(),
    jeuPlanteScreen: (context) => JeuPlantesScreen(),
    jeuFeuScreen: (context) => JeuFeuScreen(),
    partieMultijoueurFourScreen: (context) => PartieMultijoueurFourScreen(),
    multijoueurScreen: (context) => MultijoueurScreen(),
    multijoueurTwoScreen: (context) => MultijoueurTwoScreen(),
    arcadeScreen: (context) => ArcadeScreen(),
    shopScreen: (context) => ShopScreen(),
    mapEauScreen: (context) => MapEauScreen(),
    mapElectriqueScreen: (context) => MapElectriqueScreen(),
    mapRocheScreen: (context) => MapRocheScreen(),
    mapPlanteScreen: (context) => MapPlanteScreen(),
    mapFeuScreen: (context) => MapFeuScreen(),
    connexionScreen: (context) => ConnexionScreen(),
    inscriptionScreen: (context) => InscriptionScreen(),
    chatPersonnalisScreen: (context) => ChatPersonnalisScreen(),
    profilScreen: (context) => ProfilScreen(),
    paramTresScreen: (context) => ParamTresScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => ConnexionScreen()
  };
}