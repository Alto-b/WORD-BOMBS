import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_bomb/app/modules/HomeScreen/controllers/home_screen_controller.dart';

class HomeScreenFooter extends GetView<HomeScreenController> {
  const HomeScreenFooter({
    super.key,
    required this.controller,
  });

  @override
  final HomeScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                log("settings button pressed from homescreen");
                controller.showAppInfo(context);
              },
              icon: const Icon(
                Icons.info_outline,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                controller.isSoundPlayed.value =
                    !controller.isSoundPlayed.value;
                log("sound button pressed from homescreen");
                controller.playAudio();
              },
              icon: Icon(
                (controller.isSoundPlayed.value)
                    ? Icons.volume_up
                    : Icons.volume_off,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
