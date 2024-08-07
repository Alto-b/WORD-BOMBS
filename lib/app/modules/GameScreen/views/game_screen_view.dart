import 'package:animated_icon/animated_icon.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'package:hangman_game/app/utils/color_converter.dart';

import 'package:pushable_button/pushable_button.dart';
import '../controllers/game_screen_controller.dart';

class GameScreenView extends GetView<GameScreenController> {
  const GameScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final GameScreenController controller = Get.find<GameScreenController>();
    final screenHeight = Get.height;
    final screenWidth = Get.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.abc,
              color: Colors.white,
            )),
        title: Center(
          child: SizedBox(
            height: screenHeight / 10,
            width: screenWidth / 1.5,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemExtent: 50,
              itemBuilder: (context, index) {
                return Obx(() => Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AnimateIcon(
                            key: UniqueKey(),
                            onTap: () {},
                            iconType: IconType.onlyIcon,
                            height: 70,
                            width: 70,
                            color: (controller.lifeCount.value >= index + 1)
                                ? Colors.red
                                : Colors.red.shade400,
                            animateIcon:
                                (controller.lifeCount.value >= index + 1)
                                    ? AnimateIcons.cross
                                    : AnimateIcons.heart),
                      ),
                    ));
              },
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint(
                    "getRandomCountry current ${controller.currentWord} ${controller.currentHint} ");
              },
              icon: const Icon(
                Icons.downhill_skiing,
                color: Colors.white,
              ))
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Gap(25),
          Obx(
            () => Text(
              controller.currentWord.value.toString().toUpperCase(),
              style: const TextStyle(
                  fontSize: 25,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
          const Gap(30),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Obx(
                () => Text(
                  textAlign: TextAlign.center,
                  controller.currentHint.value,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: screenHeight / 2,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 36,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  crossAxisCount: 6,
                ),
                itemBuilder: (context, index) {
                  return Obx(
                    () => PushableButton(
                      height: 55,
                      elevation: 8,
                      hslColor: ColorConverter.listToHSLColor(
                          ColorConverter.colorToHSL(
                              controller.getButtonColor(index))),
                      onPressed: () {
                        controller.checkIfWordExists(
                            controller.getValue(index.toString())!, index);

                        if (!controller.tappedButtonList.contains(index)) {
                          controller.tappedButtonList.add(index);
                          debugPrint(
                              "Clicked ${controller.getValue(index.toString())}");
                        } else {
                          debugPrint(
                              "Already Clicked ${controller.getValue(index.toString())}");
                        }
                      },
                      child: Text(
                          controller.getValue(index.toString()).toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 25)),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
