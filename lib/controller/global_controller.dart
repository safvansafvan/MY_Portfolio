import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class GlobalController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final ScrollController homeScrollController =
      ScrollController(initialScrollOffset: 20);
  final ScrollController aboutScrollController =
      ScrollController(initialScrollOffset: 20);
  ScrollController? projectScrollController =
      ScrollController(initialScrollOffset: 20);

  bool isResumeButtonHover = false;

  void resumeButtonState() {
    isResumeButtonHover = !isResumeButtonHover;
    update();
  }

  Future<void> redirectToWeb(Uri uri) async {
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }

  bool isNexonButton = false;
  bool isMusicPlayerButton = false;
  bool isWalletButton = false;
  bool isWeatherButton = false;

  void nexonButtonState(bool v) {
    isNexonButton = v;
    update();
  }

  void musicButtonState(bool v) {
    isMusicPlayerButton = v;
    update();
  }

  void walletButtonState(bool v) {
    isWalletButton = v;
    update();
  }

  void weatherButtonState(bool v) {
    isWeatherButton = v;
    update();
  }
}
