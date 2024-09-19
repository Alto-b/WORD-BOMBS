// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import '../modules/GameScreen/bindings/game_screen_binding.dart';
import '../modules/GameScreen/views/game_screen_view.dart';
import '../modules/HomeScreen/bindings/home_screen_binding.dart';
import '../modules/HomeScreen/views/home_screen_view.dart';
import '../modules/SplashScreen/bindings/splash_screen_binding.dart';
import '../modules/SplashScreen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.HOME_SCREEN,
      page: () => const HomeScreenView(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 1100),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: _Paths.GAME_SCREEN,
      page: () => const GameScreenView(),
      binding: GameScreenBinding(),
    ),
  ];
}
