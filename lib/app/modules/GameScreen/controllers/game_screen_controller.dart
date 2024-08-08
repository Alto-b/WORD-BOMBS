import 'dart:math';
import 'dart:developer';
import 'package:animated_icon/animated_icon.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hangman_game/app/routes/app_pages.dart';
import 'package:hangman_game/app/utils/media.dart';
import 'package:hangman_game/data/models/keyMap.dart';
import 'package:hangman_game/data/repositories/country.dart';
import 'package:hangman_game/data/repositories/sports.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:lottie/lottie.dart';

class GameScreenController extends GetxController {
  CountryRepo? countryRepo;
  RxString randomCountryHint = 'loading'.obs;

  RxList tappedButtonList = [].obs;
  RxList resultList = [].obs;

  RxInt lifeCount = 0.obs;
  RxInt maxScore = 0.obs;
  RxInt lifetimeMaxScore = 0.obs;
  RxString currentWord = "".obs;
  RxList currentHint = [].obs;

  late KeyMap keyMapInstance;
  RxList<bool> revealedLetters = <bool>[].obs;
  SharedPreferences? prefs;

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
    _initPrefs();
    _resetGame();
  }

  Future<void> _initPrefs() async {
    prefs = await SharedPreferences.getInstance();
    maxScore.value = prefs?.getInt('maxScore') ?? 0;
    lifetimeMaxScore.value = prefs?.getInt('lifetimeMaxScore') ?? 0;
  }

  void _updateMaxScore(int newScore) {
    if (newScore > maxScore.value) {
      maxScore.value = newScore;
      prefs?.setInt('maxScore', newScore);
    }
    if (newScore > lifetimeMaxScore.value) {
      lifetimeMaxScore.value = newScore;
      prefs?.setInt('lifetimeMaxScore', newScore);
    }
  }

  void _resetMaxScore() {
    maxScore.value = 0;
    prefs?.setInt('maxScore', 0);
  }

  void _resetGame() {
    lifeCount.value = 0;
    tappedButtonList.clear();
    chooseCategory();
  }

  @override
  void onReady() {
    super.onReady();
    chooseCategory();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void chooseCategory() {
    getRandomSport();
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
  Future<MapEntry<String, List<String>>> getRandomCountry() async {
    final random = Random();
    final keys = CountryRepo().countries.keys.toList();
    final randomKey = keys[random.nextInt(keys.length)];
    debugPrint(
        "getRandomCountry $randomKey ${CountryRepo().countries[randomKey]}");
    currentWord.value = randomKey;
    currentHint.value = CountryRepo().countries[randomKey]!;
    resultList.value = currentWord.value.split('').toList();

    // Initialize revealedLetters with true for spaces and false for other characters
    revealedLetters.value =
        currentWord.value.split('').map((char) => char == ' ').toList();

    return MapEntry(randomKey, CountryRepo().countries[randomKey]!);
  }

// Method to get a random key-value pair from the sports map
  Future<MapEntry<String, List<String>>> getRandomSport() async {
    final random = Random();
    final keys = SportsRepo().sports.keys.toList();
    final randomKey = keys[random.nextInt(keys.length)];
    debugPrint("getRandomSport $randomKey ${SportsRepo().sports[randomKey]}");
    currentWord.value = randomKey;
    currentHint.value = SportsRepo().sports[randomKey]!;
    resultList.value = currentWord.value.split('').toList();

    // Initialize revealedLetters with true for spaces and false for other characters
    revealedLetters.value =
        currentWord.value.split('').map((char) => char == ' ').toList();

    return MapEntry(randomKey, SportsRepo().sports[randomKey]!);
  }

  void checkIfWordExists(String keyword, int index) async {
    print("lifeCount ${lifeCount.value}");
    if (lifeCount.value == 5) {
      _updateMaxScore(maxScore.value); // Save the score
      showAlertDialog("Game Over", "You've exhausted all your chances.");
      _resetMaxScore(); // Reset maxScore for new game
      return; // Prevent further processing
    }

    debugPrint("checkIfWordExists $keyword $index");
    List<String> wordList = currentWord.toUpperCase().split('').toList();
    if (!wordList.contains(keyword) && !(tappedButtonList.contains(index))) {
      lifeCount.value += 1; // Increment life count for wrong guess
    } else if (wordList.contains(keyword) &&
        !(tappedButtonList.contains(index))) {
      // Correct guess, reveal the character
      for (int i = 0; i < wordList.length; i++) {
        if (wordList[i] == keyword) {
          revealedLetters[i] = true;
        }
      }
    }

    // Check if all characters are revealed
    if (!revealedLetters.contains(false)) {
      maxScore.value++;
      _updateMaxScore(maxScore.value); // Save the score
      await Future.delayed(Duration(milliseconds: 500)).then((value) {
        tappedButtonList.clear();
        chooseCategory(); // Get a new random country
      }); // Add a small delay for user experience
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
                    Get.offAndToNamed(Routes.HOME_SCREEN,
                        result: lifetimeMaxScore.value);
                  },
                  iconType: IconType.continueAnimation,
                  height: 70,
                  width: 70,
                  color: Colors.white,
                  animateIcon: AnimateIcons.home,
                )
              ],
            ),
          ),
        ),
      ),
      barrierDismissible: false,
    ).then((_) {
      _resetGame(); // Reset game state when dialog is dismissed
    });
  }
}
