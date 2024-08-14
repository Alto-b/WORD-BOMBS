import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:hangman_game/app/utils/media.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.find<SplashScreenController>();
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              Media.splashBgGif, // Your background image
              fit: BoxFit.cover,
              opacity: AlwaysStoppedAnimation(0.3),
            ),
          ),
          // Main content
          Center(
            child: Column(
              children: [
                Gap(60),
                // game logo
                Center(
                  child: Column(
                    children: [
                      Hero(
                        tag: "gameLogo",
                        child: Image.asset(
                          Media.bombNoBG,
                          fit: BoxFit.cover,
                          filterQuality: FilterQuality.high,
                          opacity: AlwaysStoppedAnimation(0.7),
                        ),
                      ),
                    ],
                  ),
                ),
                // Container(
                //     height: Get.height / 1.5,
                //     width: Get.width,
                //     child: Lottie.asset(Media.splash2Bomb)),
                Spacer(),
                Shimmer.fromColors(
                  baseColor: Colors.grey,
                  highlightColor: Color(0xFF01fec3),
                  period: Duration(seconds: 1),
                  direction: ShimmerDirection.ltr,
                  enabled: true,
                  child: Image.asset(
                    Media.codeFasciaLogo,
                    height: 100,
                  ),
                ),
                Obx(
                  () => Column(
                    children: [
                      Text(
                        'v.${controller.version.value}',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Gap(10),
                      Text(
                        '©CodeFascia',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
                Gap(50)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
