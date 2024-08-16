import 'dart:developer';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hangman_game/data/repositories/dataRepo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreenController extends GetxController {
  final AudioPlayer audioPlayer = AudioPlayer();
  final RxBool isSoundPlayed = false.obs;
  RxInt lifetimeMaxScore = 0.obs;
  RxString selectedRepository = ''.obs;
  @override
  void onInit() {
    super.onInit();
    selectedRepository.value = '';
    debugPrint(
        "homescreen controller onInit with repo ${selectedRepository.value}");
    initRepositories();
    // playAudioOnInit();
    initSharedPreference();
  }

  @override
  void onReady() {
    super.onReady();
    resetRepositorySelection();
  }

  @override
  void onClose() {
    audioPlayer.stop();
    audioPlayer.dispose();
    super.onClose();
  }

  List<String> getRepositoryNames() {
    return [
      'Animals',
      'Brands',
      'Chemistry',
      'Countries',
      'Famous People',
      'Foods',
      'Fruits & Vegetables',
      'Information Technology',
      'Movies',
      'Mythology',
      'Science',
      'Sports',
      'Superheroes',
      'Vehicles'
    ];
  }

  void resetRepositorySelection() {
    selectedRepository.value = '';
    log("HomeScreenController onReady: selectedRepository reset to ${selectedRepository.value}");
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

// Method to handle the repository selection
  void onRepositorySelected(String repoName) {
    selectedRepository.value = repoName;
    // You can add additional logic here, such as fetching data based on the selected repository
  }

  void initSharedPreference() async {
    // Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    lifetimeMaxScore.value = prefs.getInt('lifetimeMaxScore') ?? 0;
  }

  void updateLifetimeMaxScore(int newScore) {
    lifetimeMaxScore.value = newScore;
  }

  Future<void> playAudioOnInit() async {
    await audioPlayer.play(AssetSource('audio/hp-bgm-1.mp3'));
  }

  Future<void> playAudio() async {
    if (isSoundPlayed.value) {
      await audioPlayer.pause();
      log("Audio stopped");
    } else {
      log("Audio playing");
      await audioPlayer.play(AssetSource('audio/hp-bgm-1.mp3'));
    }
  }

  /// A method that returns an AlertDialog for displaying information about the app.
  AlertDialog buildInfoDialog(BuildContext context) {
    return AlertDialog(
      title: Text(
        'About This App',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'This app is designed to provide an immersive experience in Flutter development. '
            'With a focus on modern UI design, this app integrates various features to help developers '
            'learn and apply their skills in building robust applications.',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Key Features:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            '• Feature 1: Modern UI components\n'
            '• Feature 2: Real-time data updates\n'
            '• Feature 3: Custom animations and transitions\n'
            '• Feature 4: Seamless state management\n',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Version: 1.0.0',
            style: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          child: Text(
            'Close',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }

  void showAppInfo(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => buildInfoDialog(context),
    );
  }
}
