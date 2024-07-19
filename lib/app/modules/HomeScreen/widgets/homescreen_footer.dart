import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hangman_game/app/modules/HomeScreen/controllers/home_screen_controller.dart';

class HomeScreenFooter extends StatelessWidget {
  const HomeScreenFooter({
    super.key,
    required this.controller,
  });

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
              },
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                log("sound button pressed from homescreen");
                controller.playAudio();
              },
              icon: Icon(
                (!controller.soundIsPlayed.value) ? Icons.mic : Icons.mic_off,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
