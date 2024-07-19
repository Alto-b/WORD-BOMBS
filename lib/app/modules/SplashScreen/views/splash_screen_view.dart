import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // controller.goToHomeScreen();
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
              height: Get.height,
              width: Get.width,
              child: InkWell(
                  onTap: () => controller.goToHomeScreen(),
                  child: Lottie.asset('assets/loaders/splash-1.json'))),
        ),
      ),
    );
  }
}
