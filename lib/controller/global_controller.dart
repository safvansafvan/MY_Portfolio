import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GlobalController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void onInit() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
      animationBehavior: AnimationBehavior.preserve,
    );
    animation =
        Tween<Offset>(begin: const Offset(0, 0.8), end: Offset.zero).animate(
      CurvedAnimation(parent: animationController, curve: Curves.ease),
    );
    super.onInit();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

  bool isResumeButtonHover = false;

  void resumeButtonState() {
    isResumeButtonHover = !isResumeButtonHover;
    update();
  }
}
