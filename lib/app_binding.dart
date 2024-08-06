import 'package:get/get.dart';
import 'package:hangman_game/app/modules/GameScreen/controllers/game_screen_controller.dart';
import 'package:hangman_game/app/modules/HomeScreen/controllers/home_screen_controller.dart';
import 'package:hangman_game/app/modules/SplashScreen/controllers/splash_screen_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GameScreenController>(() => GameScreenController());
    Get.lazyPut<HomeScreenController>(() => HomeScreenController());
    Get.lazyPut<SplashScreenController>(() => SplashScreenController());
  }
}
