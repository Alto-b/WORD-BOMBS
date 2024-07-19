import 'dart:developer';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  final AudioPlayer audioPlayer = AudioPlayer();
  final RxBool soundIsPlayed = false.obs;

  @override
  void onInit() {
    super.onInit();
    playAudio();
  }

  @override
  void onClose() {
    audioPlayer.dispose();
    super.onClose();
  }

  Future<void> playAudio() async {
    if (soundIsPlayed.value) {
      await audioPlayer.stop();
      log("Audio stopped");
      soundIsPlayed.value = false;
    } else {
      soundIsPlayed.value = true;
      log("Audio playing");
      await audioPlayer
          .play(AssetSource('audio/hp-bgm-1.mp3'))
          .then((value) => soundIsPlayed.value = false);
    }
  }
}
