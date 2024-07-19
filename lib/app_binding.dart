import 'package:get/get.dart';
import 'package:hangman_game/app/modules/SplashScreen/controllers/splash_screen_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreenController>(() => SplashScreenController());
  }
}
