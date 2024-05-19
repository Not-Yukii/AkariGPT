
# Akari
### Table of contents
- [System requirements](#system-requirements)
- [Figma design guidelines for better UI accuracy](#figma-design-guideline-for-better-accuracy)
- [Check the UI of the entire app](#app-navigations)
- [Application structure](#project-structure)
- [How to format your code?](#how-you-can-do-code-formatting)
- [How you can improve code readability?](#how-you-can-improve-the-readability-of-code)
- [Libraries and tools used](#libraries-and-tools-used)
- [Support](#support)

### System requirements

Dart SDK Version 3.3.2 or greater.
Flutter SDK Version 3.19.4 or greater.

### Figma design guidelines for better UI accuracy

Read our guidelines to increase the accuracy of design-to-code conversion by optimizing Figma designs.
https://docs.dhiwise.com/docs/Designguidelines/intro

### Check the UI of the entire app

Check the UI of all the app screens from a single place by setting up the 'initialRoute'  to AppNavigation in the AppRoutes.dart file.

### Application structure
After successful build, your application structure should look like this:
                    
```
.
├── android                         - It contains files required to run the application on an Android platform.
├── assets                          - It contains all images and fonts of your application.
├── ios                             - It contains files required to run the application on an iOS platform.
├── lib                             - Most important folder in the application, used to write most of the Dart code..
    ├── main.dart                   - Starting point of the application
    ├── core
    │   ├── app_export.dart         - It contains commonly used file imports
    │   ├── constants               - It contains static constant class file
    │   └── utils                   - It contains common files and utilities of the application
    ├── presentation                - It contains widgets of the screens
    ├── routes                      - It contains all the routes of the application
    └── theme                       - It contains app theme and decoration classes
    └── widgets                     - It contains all custom widget classes
```
### How to format your code?

- if your code is not formatted then run following command in your terminal to format code
  ```
  dart format .
  ```

### How you can improve code readability?

Resolve the errors and warnings that are shown in the application.

### Liste des URL .dart :

- [app_export.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/core/app_export.dart)
- [network_info.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/core/network/network_info.dart)
- [date_time_utils.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/core/utils/date_time_utils.dart)
- [image_constant.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/core/utils/image_constant.dart)
- [size_utils.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/core/utils/size_utils.dart)
- [main.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/main.dart)
- [app_navigation_screen.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/app_navigation_screen/app_navigation_screen.dart)
- [arcade_screen.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/arcade_screen/arcade_screen.dart)
- [button_item_widget.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/arcade_screen/widgets/button_item_widget.dart)
- [chat_personnalis_screen.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/chat_personnalis_screen/chat_personnalis_screen.dart)
- [connexion_screen.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/connexion_screen/connexion_screen.dart)
- [inscription_screen.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/inscription_screen/inscription_screen.dart)
- [jeu_bleu_screen.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/jeu_bleu_screen/jeu_bleu_screen.dart)
- [jeu_feu_screen.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/jeu_feu_screen/jeu_feu_screen.dart)
- [jeu_lectrique_screen.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/jeu_lectrique_screen/jeu_lectrique_screen.dart)
- [jeu_plante_screen.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/jeu_plante_screen/jeu_plante_screen.dart)
- [jeu_roche_screen.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/jeu_roche_screen/jeu_roche_screen.dart)
- [map_eau_screen.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/map_eau_screen/map_eau_screen.dart)
- [map_electrique_screen.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/map_electrique_screen/map_electrique_screen.dart)
- [map_feu_screen.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/map_feu_screen/map_feu_screen.dart)
- [map_plante_screen.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/map_plante_screen/map_plante_screen.dart)
- [map_roche_screen.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/map_roche_screen/map_roche_screen.dart)
- [mondes_container_screen.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/mondes_container_screen/mondes_container_screen.dart)
- [mondes_page.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/mondes_page/mondes_page.dart)
- [userprofile_item_widget.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/mondes_page/widgets/userprofile_item_widget.dart)
- [multijoueur_page.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/multijoueur_page/multijoueur_page.dart)
- [listajouterdela1_item_widget.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/multijoueur_page/widgets/listajouterdela1_item_widget.dart)
- [themeselection1_item_widget.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/multijoueur_page/widgets/themeselection1_item_widget.dart)
- [multijoueur_tab_container_screen.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/multijoueur_tab_container_screen/multijoueur_tab_container_screen.dart)
- [multijoueur_two_screen.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/multijoueur_two_screen/multijoueur_two_screen.dart)
- [nestedview1_item_widget.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/multijoueur_two_screen/widgets/nestedview1_item_widget.dart)
- [parametres_screen.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/parametres_screen/parametres_screen.dart)
- [partie_multijoueur_four_screen.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/partie_multijoueur_four_screen/partie_multijoueur_four_screen.dart)
- [partie_perso_three_screen.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/partie_perso_three_screen/partie_perso_three_screen.dart)
- [parties_perso_two_page.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/parties_perso_two_page/parties_perso_two_page.dart)
- [nestedview_item_widget.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/parties_perso_two_page/widgets/nestedview_item_widget.dart)
- [viewhierarchy_item_widget.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/parties_perso_two_page/widgets/viewhierarchy_item_widget.dart)
- [parties_persos_page.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/parties_persos_page/parties_persos_page.dart)
- [listajouterdela_item_widget.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/parties_persos_page/widgets/listajouterdela_item_widget.dart)
- [themeselection_item_widget.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/parties_persos_page/widgets/themeselection_item_widget.dart)
- [parties_persos_tab_container_screen.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/parties_persos_tab_container_screen/parties_persos_tab_container_screen.dart)
- [profil_screen.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/profil_screen/profil_screen.dart)
- [shop_screen.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/shop_screen/shop_screen.dart)
- [shop1_item_widget.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/shop_screen/widgets/shop1_item_widget.dart)
- [shop_item_widget.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/presentation/shop_screen/widgets/shop_item_widget.dart)
- [app_routes.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/routes/app_routes.dart)
- [app_decoration.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/theme/app_decoration.dart)
- [custom_button_style.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/theme/custom_button_style.dart)
- [custom_text_style.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/theme/custom_text_style.dart)
- [theme_helper.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/theme/theme_helper.dart)
- [appbar_image.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/widgets/app_bar/appbar_image.dart)
- [appbar_leading_image.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/widgets/app_bar/appbar_leading_image.dart)
- [appbar_subtitle.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/widgets/app_bar/appbar_subtitle.dart)
- [appbar_subtitle_one.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/widgets/app_bar/appbar_subtitle_one.dart)
- [appbar_subtitle_three.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/widgets/app_bar/appbar_subtitle_three.dart)
- [appbar_subtitle_two.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/widgets/app_bar/appbar_subtitle_two.dart)
- [appbar_title.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/widgets/app_bar/appbar_title.dart)
- [appbar_title_button.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/widgets/app_bar/appbar_title_button.dart)
- [appbar_title_image.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/widgets/app_bar/appbar_title_image.dart)
- [custom_app_bar.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/widgets/app_bar/custom_app_bar.dart)
- [base_button.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/widgets/base_button.dart)
- [custom_bottom_bar.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/widgets/custom_bottom_bar.dart)
- [custom_elevated_button.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/widgets/custom_elevated_button.dart)
- [custom_floating_button.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/widgets/custom_floating_button.dart)
- [custom_image_view.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/widgets/custom_image_view.dart)
- [custom_outlined_button.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/widgets/custom_outlined_button.dart)
- [custom_radio_button.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/widgets/custom_radio_button.dart)
- [custom_search_view.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/widgets/custom_search_view.dart)
- [custom_text_form_field.dart](https://github.com/Not-Yukii/AkariGPT/blob/main/lib/widgets/custom_text_form_field.dart)
