import 'dart:math';
import 'dart:developer';
import 'package:animated_icon/animated_icon.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hangman_game/app/modules/HomeScreen/controllers/home_screen_controller.dart';
import 'package:hangman_game/app/routes/app_pages.dart';
import 'package:hangman_game/app/utils/media.dart';
import 'package:hangman_game/data/models/keyMap.dart';

import 'package:hangman_game/data/repositories/dataRepo.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:lottie/lottie.dart';

class GameScreenController extends GetxController {
  Rx<Color> scaffoldColor = Color(0xFF1f2631).obs;
  RxBool isLoadingHints = false.obs;
  RxString randomCountryHint = 'loading'.obs;
  RxString selectedRepository = ''.obs;

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
    25, 23, 2, 21, 1, 13, 12 // ZXCVBNM
  ];

  final AudioPlayer audioPlayer = AudioPlayer();
  final RxBool isSoundPlayedSuccess = false.obs;

  @override
  void onInit() {
    super.onInit();
    keyMapInstance = KeyMap();
    _initPrefs();
    initRepositories();

    // Retrieve the selected repository from the arguments passed from HomeScreen
    if (Get.arguments != null) {
      selectedRepository.value = Get.arguments['selectedRepo'];
    }

    _resetGame();
    chooseCategory();
  }

  Future<void> _initPrefs() async {
    prefs = await SharedPreferences.getInstance();
    maxScore.value = prefs?.getInt('maxScore') ?? 0;
    lifetimeMaxScore.value = prefs?.getInt('lifetimeMaxScore') ?? 0;

    // Get the selectedRepository value from the HomeScreenController
    // final homeScreenController = Get.find<HomeScreenController>();
    // selectedRepository.value = homeScreenController.selectedRepository.value;

    // Print to check if the value is correctly retrieved
    debugPrint(
        "GameScreenController onInit with repo: ${selectedRepository.value}");
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
    selectedRepository.value = '';
    HomeScreenController().selectedRepository.value = '';
  }

  void chooseCategory() {
    final selectedRepo = selectedRepository.value;
    debugPrint('Choosing category for repository: $selectedRepo');

    // Use the selected repository to fetch the appropriate data
    final repo = getRepository(selectedRepo);
    if (repo.isNotEmpty) {
      getRandomEntryFromRepo(repo);
    } else {
      debugPrint('Error: Repository not found or empty for $selectedRepo');
    }
  }

  void initRepositories() {
    try {
      // Initialize your repositories here
      Get.put(DataRepo());
      debugPrint("Repositories initialized successfully");
    } catch (e) {
      debugPrint("Error initializing repositories: $e");
    }
  }

  List<String> getRepositoryNames() {
    return [
      'Countries',
      'Sports',
      'Vehicles',
      'Animals',
      'Chemistry',
    ];
  }

  // Method to return the appropriate repository based on input
  Map<String, List<String>> getRepository(String repoName) {
    debugPrint('Selected Repository: $repoName');

    switch (repoName) {
      case 'Countries':
        return DataRepo().countries;
      case 'Sports':
        return DataRepo().sports;
      case 'Vehicles':
        return DataRepo().vehicles;
      case 'Animals':
        return DataRepo().animals;
      case 'Chemistry':
        return DataRepo().chemistryAndChemicals;
      default:
        // If the repository name is not found, return a random repository
        String randomRepoName =
            getRepositoryNames()[Random().nextInt(getRepositoryNames().length)];
        return getRepository(randomRepoName);
      // debugPrint('Repository not found: $repoName');
      // throw Exception('Error loading repo');
    }
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

  Future<MapEntry<String, List<String>>> getRandomEntryFromRepo(
      Map<String, List<String>> repo) async {
    final random = Random();
    final keys = repo.keys.toList();
    final randomKey = keys[random.nextInt(keys.length)];
    debugPrint("getRandomEntry $randomKey ${repo[randomKey]}");

    currentWord.value = randomKey;
    currentHint.value = repo[randomKey]!;
    resultList.value = currentWord.value.split('').toList();

    // Initialize revealedLetters with true for spaces and false for other characters
    revealedLetters.value =
        currentWord.value.split('').map((char) => char == ' ').toList();

    return MapEntry(randomKey, repo[randomKey]!);
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
      // await splashScaffoldColor();
      await updateHintsAfterRight();
      await Future.delayed(Duration(milliseconds: 1200)).then((value) {
        tappedButtonList.clear();
        chooseCategory(); // Get a new random country
      }); // Add a small delay for user experience
    }
  }

  Future<void> updateHintsAfterRight() async {
    isLoadingHints.value = true;
    await Future.delayed(Duration(seconds: 1));
    playAudioOnSuccess();
    isLoadingHints.value = false;
  }

  Future<void> playAudioOnSuccess() async {
    await audioPlayer.play(AssetSource(Media.guess_success_1));
  }

  Future<void> splashScaffoldColor() async {
    // Change scaffold color to green for 500 milliseconds
    scaffoldColor.value = Colors.blueGrey;
    HapticFeedback.heavyImpact(); // Trigger haptic feedback
    await Future.delayed(Duration(milliseconds: 200));
    scaffoldColor.value = Color(0xFF1f2631); // Change back to original color
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
