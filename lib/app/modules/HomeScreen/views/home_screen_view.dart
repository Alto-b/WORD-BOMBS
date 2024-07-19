import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hangman_game/app/modules/HomeScreen/widgets/homescreen_footer.dart';
import 'package:lottie/lottie.dart';

import '../controllers/home_screen_controller.dart';

class HomeScreenView extends GetView<HomeScreenController> {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = Get.height;
    final screenWidth = Get.width;
    return Scaffold(
      backgroundColor: Color(0xFF1f2631),
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
            //hangman logo
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/hgman-nobg.png',
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ],
              ),
            ),
            //start game button
            Container(
              height: screenHeight / 2.5,
              width: screenWidth,
              // color: Colors.red,
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
                                log("play button pressed from homescreen");
                              },
                              child: Lottie.asset('assets/buttons/play.json',
                                  height: 100),
                            ),
                            Gap(70),
                            Text("data"),
                            Gap(70),
                          ],
                        ),
                        Spacer(),
                        HomeScreenFooter(controller: controller),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Container(
            //   height: screenHeight / 2.5,
            //   width: screenWidth,
            //   color: Colors.white,
            //   child: Center(
            //     child: ListView.builder(
            //       itemCount: 2,
            //       itemBuilder: (context, index) {
            //         return AnimationConfiguration.staggeredList(
            //           position: index,
            //           duration: Duration(milliseconds: 800),
            //           child: SlideAnimation(child: Text("data")),
            //         );
            //       },
            //     ),
            //   ),
            // )
            // IconButton.outlined(
            //     onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_outlined)),
            // Spacer(),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     IconButton(
            //         onPressed: () {},
            //         icon: Icon(
            //           Icons.settings,
            //         ))
            //   ],
            // ),
            // Gap(screenHeight / 12)
          ],
        ),
      ),
    );
  }
}
