import 'dart:developer';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  final AudioPlayer audioPlayer = AudioPlayer();
  final RxBool isSoundPlayed = false.obs;

  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  String? selectedValue;

  @override
  void onInit() {
    super.onInit();
    log("HomeScreenController onInit");
    playAudioOnInit();
    // audioPlayer.play(AssetSource('audio/hp-bgm-1.mp3'));
  }

  @override
  void onClose() {
    audioPlayer.stop();
    audioPlayer.dispose();
    super.onClose();
  }

  Future<void> playAudioOnInit() async {
    await audioPlayer.play(AssetSource('audio/hp-bgm-1.mp3'));
  }

  Future<void> playAudio() async {
    if (isSoundPlayed.value) {
      await audioPlayer.pause();
      log("Audio stopped");
      // isSoundPlayed.value = false;
    } else {
      // isSoundPlayed.value = true;
      log("Audio playing");
      await audioPlayer.play(AssetSource('audio/hp-bgm-1.mp3'));
    }
  }
}
