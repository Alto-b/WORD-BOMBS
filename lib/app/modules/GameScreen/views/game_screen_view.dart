import 'package:animated_icon/animated_icon.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'package:hangman_game/app/utils/color_converter.dart';
import 'package:hangman_game/app/utils/media.dart';
import 'package:hangman_game/data/models/keyMap.dart';
import 'package:lottie/lottie.dart';

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
          Obx(
            () => Stack(
              alignment: Alignment.center,
              children: [
                Lottie.asset(Media.lines_animation_1, height: 150),
                Center(
                  child: Card(
                    color: Colors.black12.withOpacity(0.2),
                    elevation: 150,
                    shadowColor: Colors.green,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        controller.currentWord.value.toString().toUpperCase(),
                        style: const TextStyle(
                          fontSize: 25,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Obx(
                () => Text(
                  textAlign: TextAlign.center,
                  controller.currentHint.value,
                  maxLines: 10,
                  style: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          const Gap(10),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: SizedBox(
              height: screenHeight / 2.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //row 1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                        controller.qwertyOrder.getRange(0, 10).map((keyIndex) {
                      return _buildKeyButton(controller, keyIndex);
                    }).toList(),
                  ),
                  const Gap(15),
                  //row 2
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:
                        controller.qwertyOrder.getRange(10, 19).map((keyIndex) {
                      return _buildKeyButton(controller, keyIndex);
                    }).toList(),
                  ),
                  const Gap(15),
                  //row 3
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:
                        controller.qwertyOrder.getRange(19, 26).map((keyIndex) {
                      return _buildKeyButton(controller, keyIndex);
                    }).toList(),
                  ),
                  const Gap(15),
                ],
              ),
            ),
          ),
          Obx(
            () => Stack(
              children: [
                ClipRRect(
                  // borderRadius: BorderRadius.circular(25),
                  child: LinearProgressIndicator(
                    minHeight: 25,
                    backgroundColor: Colors.green.shade300,
                    value: controller.lifeCount.value / 5,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Colors.transparent),
                  ),
                ),
                ClipRRect(
                  // borderRadius: BorderRadius.circular(25),
                  child: Container(
                    height: 25,
                    width: screenWidth * (controller.lifeCount.value / 5),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.yellow,
                          Colors.orange,
                          Colors.orange,
                          Colors.red,
                          Colors.red,
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildKeyButton(GameScreenController controller, int keyIndex) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Container(
          width: Get.width / 12,
          child: PushableButton(
            height: 45,
            // width: 40,
            elevation: 8,
            hslColor: ColorConverter.listToHSLColor(
                ColorConverter.colorToHSL(controller.getButtonColor(keyIndex))),
            onPressed: () {
              controller.checkIfWordExists(
                  controller.getValue(keyIndex.toString())!, keyIndex);

              if (!controller.tappedButtonList.contains(keyIndex)) {
                controller.tappedButtonList.add(keyIndex);
                debugPrint(
                    "Clicked ${controller.getValue(keyIndex.toString())}");
              } else {
                debugPrint(
                    "Already Clicked ${controller.getValue(keyIndex.toString())}");
              }
            },
            child: Text(
              controller.getValue(keyIndex.toString()).toString(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
