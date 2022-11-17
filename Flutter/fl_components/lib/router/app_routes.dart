import 'package:flutter/material.dart';

import '../models/menu_option.dart';
import '../screens/screens.dart';
import 'package:fl_components/models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    /*MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),*/
    MenuOption(
        route: 'listview1',
        name: 'Lista View #1 Screen',
        screen: const Listview1Screen(),
        icon: Icons.list_alt_rounded),
    MenuOption(
        route: 'listview2',
        name: 'Lista View #2 Screen',
        screen: const Listview2Screen(),
        icon: Icons.my_library_books_sharp),
    MenuOption(
        route: 'alert',
        name: 'Alerta  !',
        screen: const AlertScreen(),
        icon: Icons.add_alarm_rounded),
    MenuOption(
        route: 'card',
        name: 'Tarjetas - Cards',
        screen: const CardScreen(),
        icon: Icons.credit_card),
    MenuOption(
        route: 'avatar',
        name: 'Avatar',
        screen: const AvatarScreen(),
        icon: Icons.castle_outlined),
      MenuOption(
        route: 'animated',
        name: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.catching_pokemon_rounded),
      MenuOption(
        route: 'inputs',
        name: 'Inputs & Forms',
        screen: const InputsScreen(),
        icon: Icons.policy),
      MenuOption(
        route: 'slider',
        name: 'Slider & Checks',
        screen: SliderScreen(),
        icon: Icons.precision_manufacturing),
      MenuOption(
        route: 'listviewBuilder',
        name: 'InfiniteScrol & Pull to refresh',
        screen: const ListViewBuilderScreen(),
        icon: Icons.theater_comedy_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll( { 'home' : (BuildContext context) => const HomeScreen() });
    for (final option in menuOptions) {
      appRoutes.addAll({
        option.route: (BuildContext context) => option.screen
        });
    }

    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
