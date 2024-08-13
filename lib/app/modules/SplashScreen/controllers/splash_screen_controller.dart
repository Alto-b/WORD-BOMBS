import 'dart:developer';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:hangman_game/app/routes/app_pages.dart';
import 'package:hangman_game/app/utils/media.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SplashScreenController extends GetxController {
  final AudioPlayer audioPlayer = AudioPlayer();
  final RxBool isSoundPlayed = false.obs;
  RxString appName = ''.obs;
  RxString packageName = ''.obs;
  RxString version = ''.obs;
  RxString buildNumber = ''.obs;

  RxBool isLogoAnimated = false.obs;

  @override
  void onInit() {
    log("SplashScreenController initialized");
    playAudioOnInit();
    goToHomeScreen();
    getAppDetails();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(milliseconds: 500), () {
      isLogoAnimated.value = true;
    });
    // goToHomeScreen();
  }

  @override
  void onClose() {
    super.onClose();
    audioPlayer.stop(); // Stop the audio when the controller is closed
  }

  Future<void> playAudioOnInit() async {
    await audioPlayer.play(AssetSource(
      Media.futuristic,
    ));
  }

  Future<void> goToHomeScreen() async {
    log("SplashScreenController 1");
    await Future.delayed(Duration(seconds: 3));
    log("SplashScreenController 2");
    Get.offAllNamed(
      Routes.HOME_SCREEN,
    );
  }

  Future<void> getAppDetails() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    appName.value = packageInfo.appName;
    packageName.value = packageInfo.packageName;
    version.value = packageInfo.version;
    buildNumber.value = packageInfo.buildNumber;
  }
}
