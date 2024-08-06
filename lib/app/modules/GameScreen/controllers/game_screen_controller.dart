import 'dart:math';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:hangman_game/data/models/keyMap.dart';
import 'package:hangman_game/data/repositories/country.dart';

class GameScreenController extends GetxController {
  CountryRepo? countryRepo;
  RxString randomCountryHint = 'loading'.obs;
  RxList tappedButtonList = [].obs;
  RxInt lifeCount = 0.obs;
  late KeyMap keyMapInstance;

  @override
  void onInit() {
    super.onInit();
    keyMapInstance = KeyMap();
    print("getRandomCountry");
    // fetchRandomCountry();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  String? getValue(String key) {
    return keyMapInstance.keyMap[key];
  }
}
