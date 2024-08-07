import 'dart:math';
import 'dart:developer';
import 'package:animated_icon/animated_icon.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:hangman_game/app/routes/app_pages.dart';
import 'package:hangman_game/app/utils/media.dart';
import 'package:hangman_game/data/models/keyMap.dart';
import 'package:hangman_game/data/repositories/country.dart';
import 'package:lottie/lottie.dart';

class GameScreenController extends GetxController {
  CountryRepo? countryRepo;
  RxString randomCountryHint = 'loading'.obs;
  RxList tappedButtonList = [].obs;
  RxInt lifeCount = 0.obs;
  RxString currentWord = "".obs;
  RxString currentHint = "".obs;
  late KeyMap keyMapInstance;

  final List<int> qwertyOrder = [
    16, 22, 4, 17, 19, 24, 20, 8, 14, 15, // QWERTYUIOP
    0, 18, 3, 5, 6, 7, 9, 10, 11, // ASDFGHJKL
    25, 23, 2, 21, 1, 12, 13 // ZXCVBNM
  ];

  final AudioPlayer audioPlayer = AudioPlayer();
  final RxBool isSoundPlayedSuccess = false.obs;

  @override
  void onInit() {
    super.onInit();
    keyMapInstance = KeyMap();
    getRandomCountry();
    lifeCount.value = 0; // Initialize life count to 0
  }

  @override
  void onReady() {
    super.onReady();
    getRandomCountry();
  }

  @override
  void onClose() {
    super.onClose();
  }

  String? getValue(String key) {
    return keyMapInstance.keyMap[key];
  }

  Color getButtonColor(int index) {
    String? character = getValue(index.toString());
    print("Character: $character");
    print("Tapped Button List: $tappedButtonList");
    if (character != null && tappedButtonList.contains(index)) {
      List<String> currentWordList = currentWord.value.toLowerCase().split('');
      print("Current Word List: $currentWordList");
      if (currentWordList.contains(character.toLowerCase())) {
        return Colors.green;
      } else {
        return Colors.red;
      }
    } else {
      return Colors.grey;
    }
  }

  // Method to get a random key-value pair from the countries map
  Future<MapEntry<String, String>> getRandomCountry() async {
    final random = Random();
    final keys = CountryRepo().countries.keys.toList();
    final randomKey = keys[random.nextInt(keys.length)];
    debugPrint(
        "getRandomCountry $randomKey ${CountryRepo().countries[randomKey]}");
    currentWord.value = randomKey;
    currentHint.value = CountryRepo().countries[randomKey]!;
    return MapEntry(randomKey, CountryRepo().countries[randomKey]!);
  }

  void checkIfWordExists(String keyword, int index) async {
    print("lifeCount ${lifeCount.value}");
    if (lifeCount.value == 5) {
      showAlertDialog("Game Over", "You've exhausted all your chances.");
      // Check if the user has exhausted their chances
      // Future.delayed(const Duration(milliseconds: 700)).then((value) {
      // Get.back();
      // });
      return; // Prevent further processing
    }

    debugPrint("checkIfWordExists $keyword $index");
    List<String> wordList = currentWord.toUpperCase().split('').toList();
    if (!wordList.contains(keyword) && !(tappedButtonList.contains(index))) {
      lifeCount.value += 1; // Increment life count for wrong guess
    } else if (wordList.contains(keyword) &&
        !(tappedButtonList.contains(index))) {
      // Correct guess, no action needed
    }
  }

  Future<void> playAudioForSuccess() async {
    debugPrint('asddasdas');
    await audioPlayer.play(AssetSource(
      Media.wordSelectSuccessSound,
    ));
  }

//alert dialog for game over
  void showAlertDialog(String title, String message) {
    Get.dialog(
      Center(
        child: Card(
          color: Colors.black87,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Lottie.asset(Media.bomb),
                SizedBox(height: 20),
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20),
                AnimateIcon(
                  key: UniqueKey(),
                  onTap: () {
                    Get.offAllNamed(Routes.HOME_SCREEN);
                  },
                  iconType: IconType.continueAnimation,
                  height: 70,
                  width: 70, color: Colors.white,
                  // color: Color.fromRGBO(
                  //     Random.secure().nextInt(255),
                  //     Random.secure().nextInt(255),
                  //     Random.secure().nextInt(255),
                  //     1),
                  animateIcon: AnimateIcons.home,
                )
              ],
            ),
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }
}
