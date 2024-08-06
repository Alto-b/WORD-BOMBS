import 'dart:math';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:hangman_game/data/repositories/country.dart';

class GameScreenController extends GetxController {
  CountryRepo? countryRepo;
  RxString? randomCountryHint = 'loading'.obs;
  RxInt lifeCount = 0.obs;
  @override
  void onInit() {
    super.onInit();
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

  // List<String> getRandomCountry() {
  //   final random = Random();
  //   final randomIndex = random.nextInt(countryRepo!.countries.length);
  //   final randomKey = countryRepo!.countries.keys.elementAt(randomIndex);
  //   return [randomKey, countryRepo!.countries[randomKey]!];
  // }

  // void fetchRandomCountry() {
  //   final randomCountry = getRandomCountry();
  //   randomCountryHint?.value = randomCountry[1];
  // }
}
