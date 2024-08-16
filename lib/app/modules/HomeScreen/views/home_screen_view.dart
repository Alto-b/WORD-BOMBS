import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:hangman_game/app/modules/HomeScreen/widgets/homescreen_footer.dart';
import 'package:hangman_game/app/modules/HomeScreen/widgets/repo_dropdown.dart';
import 'package:hangman_game/app/modules/HomeScreen/widgets/shake_widget.dart';
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
    final GlobalKey<ShakeWidgetState> shakeKey = GlobalKey<ShakeWidgetState>();

    return Obx(
      () => Scaffold(
        body: Container(
          height: screenHeight,
          width: screenWidth,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 76, 82, 91),
                const Color.fromARGB(255, 76, 82, 91),
                const Color.fromARGB(255, 36, 42, 51).withOpacity(0.5),
                const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Gap(screenHeight / 14),
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
                      ),
                    ),
                  ],
                ),
              ),
              // Start game button
              SizedBox(
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
                                  if (controller.selectedRepository.value
                                      .trim()
                                      .isNotEmpty) {
                                    Get.delete<
                                        HomeScreenController>(); // Ensure the controller is deleted
                                    Get.toNamed(
                                      Routes.GAME_SCREEN,
                                      arguments: {
                                        'selectedRepo':
                                            controller.selectedRepository.value,
                                      },
                                    );
                                  } else {
                                    HapticFeedback
                                        .vibrate(); // Trigger haptic feedback
                                    shakeKey.currentState?.shake();
                                  }
                                  log("Play button pressed from HomeScreen");
                                },
                                child:
                                    Lottie.asset(Media.playButton, height: 100),
                              ),

                              const Gap(10),
                              // High score widget
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'High Score',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const Gap(10),
                                  ShaderMask(
                                    shaderCallback: (bounds) =>
                                        const LinearGradient(
                                      colors: [
                                        Colors.yellow,
                                        Colors.yellow,
                                        Colors.orange,
                                        Colors.red,
                                        Colors.red,
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ).createShader(bounds),
                                    child: Text(
                                      '${controller.lifetimeMaxScore.value}',
                                      style: const TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          ShakeWidget(
                            key: shakeKey,
                            child: RepositoryDropdown(
                              onRepositorySelected:
                                  controller.onRepositorySelected,
                            ),
                          ),
                          HomeScreenFooter(controller: controller)
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
