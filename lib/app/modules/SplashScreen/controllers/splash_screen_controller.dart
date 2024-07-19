import 'dart:developer';

import 'package:get/get.dart';
import 'package:hangman_game/app/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    goToHomeScreen();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void goToHomeScreen() {
    Future.delayed(Duration(seconds: 3))
        .then((value) => Get.offAllNamed(Routes.HOME_SCREEN));
  }
}
