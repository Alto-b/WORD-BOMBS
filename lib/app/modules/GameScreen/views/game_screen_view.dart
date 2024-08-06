import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../controllers/game_screen_controller.dart';

class GameScreenView extends GetView<GameScreenController> {
  const GameScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Ensure the controller is found and used properly.
    final GameScreenController controller = Get.find<GameScreenController>();
    final screenHeight = Get.height;
    final screenWidth = Get.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('GameScreenView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Gap(25),
          Center(
            child: InkWell(
              onTap: () {
                if (controller.lifeCount.value == 4) {
                  controller.lifeCount.value = 0;
                } else {
                  controller.lifeCount.value++;
                }
                log("lifecount ${controller.lifeCount.value}");
              },
              child: Container(
                height: screenHeight / 10,
                width: screenWidth / 1.5,
                color: Colors.grey,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemExtent: 50,
                  itemBuilder: (context, index) {
                    return Icon(
                      (controller.lifeCount.value >= index + 1)
                          ? Icons.heart_broken
                          : Icons.heart_broken_outlined,
                      size: 45,
                      color: (controller.lifeCount.value >= index + 1)
                          ? Colors.red
                          : Colors.white,
                    );
                  },
                ),
              ),
            ),
          ),
          Spacer(),
          //for virtual keyboard
          Container(
            height: screenHeight / 2,
            child: GridView.builder(
              itemCount: 36,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
              ),
              itemBuilder: (context, index) {
                return CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.amber,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
