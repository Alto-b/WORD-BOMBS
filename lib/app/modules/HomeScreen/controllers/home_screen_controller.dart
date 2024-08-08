import 'dart:developer';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreenController extends GetxController {
  final AudioPlayer audioPlayer = AudioPlayer();
  final RxBool isSoundPlayed = false.obs;
  RxInt lifetimeMaxScore = 0.obs;

  @override
  void onInit() {
    super.onInit();
    log("HomeScreenController onInit");
    playAudioOnInit();
    initSharedPreference();
  }

  @override
  void onClose() {
    audioPlayer.stop();
    audioPlayer.dispose();
    super.onClose();
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
}
