import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:hangman_game/app/routes/app_pages.dart';
import 'package:hangman_game/app/utils/media.dart';
import 'package:lottie/lottie.dart';
import '../controllers/home_screen_controller.dart';

class HomeScreenView extends GetView<HomeScreenController> {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeScreenController controller = Get.find<HomeScreenController>();
    controller.initSharedPreference();
    final screenHeight = Get.height;
    final screenWidth = Get.width;

    return Obx(
      () => Scaffold(
        body: Container(
          height: screenHeight,
          width: screenWidth,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 76, 82, 91),
                Color.fromARGB(255, 76, 82, 91),
                Color.fromARGB(255, 36, 42, 51).withOpacity(0.5),
                Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Gap(screenHeight / 14),
              // Hangman logo
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      Media.bombNoBG,
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                    ),
                  ],
                ),
              ),
              // Start game button
              Container(
                height: screenHeight / 2.5,
                width: screenWidth,
                child: Center(
                  child: AnimationLimiter(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: AnimationConfiguration.toStaggeredList(
                        duration: const Duration(seconds: 1),
                        childAnimationBuilder: (widget) => SlideAnimation(
                          verticalOffset: 50.0,
                          child: FadeInAnimation(
                            child: widget,
                          ),
                        ),
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(Routes.GAME_SCREEN);
                                  log("play button pressed from homescreen");
                                },
                                child:
                                    Lottie.asset(Media.playButton, height: 100),
                              ),
                              // Gap(70),
                              Text(
                                'Lifetime Max Score: ${controller.lifetimeMaxScore.value}',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),

                              // Gap(70),
                            ],
                          ),
                          Spacer(),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     IconButton(
                          //         onPressed: () {
                          //           log("settings button pressed from homescreen");
                          //         },
                          //         icon: Icon(
                          //           Icons.settings,
                          //           color: Colors.white,
                          //         )),
                          //     IconButton(
                          //         onPressed: () {
                          //           controller.isSoundPlayed.value =
                          //               !controller.isSoundPlayed.value;
                          //           controller.playAudio();
                          //           log("settings button pressed from homescreen");
                          //         },
                          //         icon: Icon(
                          //           (controller.isSoundPlayed.value)
                          //               ? Icons.volume_up
                          //               : Icons.volume_off,
                          //           color: Colors.white,
                          //         )),
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
