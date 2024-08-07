import 'dart:developer';
import 'package:get/get.dart';
import 'package:hangman_game/app/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    log("SplashScreenController initialized");
    goToHomeScreen();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    goToHomeScreen();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> goToHomeScreen() async {
    log("SplashScreenController 1");
    await Future.delayed(Duration(seconds: 3));
    log("SplashScreenController 2");
    Get.offAllNamed(Routes.HOME_SCREEN);
  }
}
