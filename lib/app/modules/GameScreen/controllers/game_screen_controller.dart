import 'dart:math';
import 'dart:developer';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:hangman_game/app/utils/media.dart';
import 'package:hangman_game/data/models/keyMap.dart';
import 'package:hangman_game/data/repositories/country.dart';

class GameScreenController extends GetxController {
  CountryRepo? countryRepo;
  RxString randomCountryHint = 'loading'.obs;
  RxList tappedButtonList = [].obs;
  RxInt lifeCount = 0.obs;
  RxString currentWord = "".obs;
  RxString currentHint = "".obs;
  late KeyMap keyMapInstance;

  final AudioPlayer audioPlayer = AudioPlayer();
  final RxBool isSoundPlayedSuccess = false.obs;

  @override
  void onInit() {
    super.onInit();
    keyMapInstance = KeyMap();
    getRandomCountry();
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
    if ((lifeCount.value == 4)) {
      Future.delayed(const Duration(milliseconds: 700)).then((value) {
        Get.back();
      });
    }
    debugPrint("checkIfWordExists $keyword $index");
    List<String> wordList = currentWord.toUpperCase().split('').toList();
    if (!wordList.contains(keyword) && !(tappedButtonList.contains(index))) {
      lifeCount.value++;
    } else if (wordList.contains(keyword) &&
        !(tappedButtonList.contains(index))) {}
  }

  Future<void> playAudioForSuccess() async {
    debugPrint('asddasdas');
    await audioPlayer.play(AssetSource(
      Media.wordSelectSuccessSound,
    ));
  }
}
