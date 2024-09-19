import 'dart:developer';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_bomb/data/repositories/dataRepo.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreenController extends GetxController {
  final AudioPlayer audioPlayer = AudioPlayer();
  final RxBool isSoundPlayed = false.obs;
  RxInt lifetimeMaxScore = 0.obs;
  RxString selectedRepository = ''.obs;
  RxString appVersion = ''.obs;
  @override
  void onInit() {
    super.onInit();
    selectedRepository.value = '';
    debugPrint(
        "homescreen controller onInit with repo ${selectedRepository.value}");
    initRepositories();
    // playAudioOnInit();
    initSharedPreference();
    loadAppVersion();
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

  Future<void> loadAppVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    appVersion.value = packageInfo.version;
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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0), // Rounded corners
      ),
      title: Row(
        children: [
          Icon(
            Icons.info_outline,
            color: Theme.of(context).primaryColor,
          ),
          const SizedBox(width: 10),
          const Text(
            'About Word Bomb',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              color: Colors.grey[300], // Subtle divider
              thickness: 1,
            ),
            const SizedBox(height: 10),
            Text(
              'Word Bomb is an exciting word guessing game that challenges your vocabulary skills! '
              'Select from different categories and guess the words based on the chosen theme. '
              'Keep your mind sharp and enjoy hours of fun!',
              style: TextStyle(
                fontSize: 16,
                height: 1.5, // Improved line height for readability
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Key Features:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColorDark,
              ),
            ),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                featureItem(context, 'Multiple game categories to choose from',
                    Icons.category),
                featureItem(context, 'Timed challenges for added excitement',
                    Icons.timer),
                featureItem(context, 'Earn points and track your progress',
                    Icons.emoji_events),
                featureItem(
                    context, 'Fun and educational gameplay', Icons.school),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                Center(
                  child: Text(
                    '© CODEFASCIA',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight
                          .w500, // Medium font weight for better emphasis
                      fontStyle: FontStyle.italic,
                      letterSpacing:
                          1.0, // Adds some spacing between letters for a refined look
                      color: Colors
                          .blueGrey[800], // Slightly darker color for contrast
                    ),
                  ),
                ),
                const SizedBox(
                    height: 8), // Reduced height for a more compact look
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize
                        .min, // Align the version text in the center
                    children: [
                      Icon(
                        Icons.info_outline,
                        size: 18,
                        color: Colors.blueGrey[
                            800], // Matching icon color for consistency
                      ),
                      const SizedBox(width: 4), // Spacing between icon and text
                      Text(
                        'v.$appVersion',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500, // Medium font weight
                          fontStyle: FontStyle.italic,
                          letterSpacing: 1.0,
                          color: Colors.blueGrey[800],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          style: TextButton.styleFrom(
            foregroundColor: Theme.of(context).primaryColor,
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: const Text('Close'),
        ),
      ],
    );
  }

  Widget featureItem(BuildContext context, String feature, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: Theme.of(context).primaryColor,
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              feature,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[800],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showAppInfo(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => buildInfoDialog(context),
    );
  }
}
