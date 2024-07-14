import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/controller/global_controller.dart';
import 'package:myportfolio/theme/app_theme.dart';
import 'package:myportfolio/utils/project_url.dart';
import 'package:myportfolio/view/about/about_screen.dart';
import 'package:myportfolio/view/home/home.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, this.isWorkButtonClick});

  final bool? isWorkButtonClick;

  @override
  Widget build(BuildContext context) {
    log(context.width.toString());
    final controller = Get.find<GlobalController>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.width < 1000 ? 50 : 100)
          .copyWith(top: 50),
      child: AppBar(
        leadingWidth: 0,
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.transparent,
        title: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              Get.offAll(
                () => const HomeView(),
                curve: Curves.easeInOut,
                transition: Transition.fade,
                duration: const Duration(milliseconds: 500),
              );
            },
            child: const Text('Muhammed Safvan'),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Get.to(
                () => const AboutScreen(),
                curve: Curves.easeInOut,
                transition: Transition.fade,
                duration: const Duration(milliseconds: 500),
              );
            },
            style: AppTheme.textButtonStyle,
            child: Text(
              'about',
              style: TextStyle(
                fontFamily: GoogleFonts.sora().fontFamily,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              if (isWorkButtonClick == true) {
                Navigator.pop(context);

                controller.homeScrollController.animateTo(
                    controller.homeScrollController.offset + 530,
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.linearToEaseOut);
              } else {
                controller.homeScrollController.animateTo(
                    controller.homeScrollController.offset + 530,
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.linearToEaseOut);
              }
            },
            style: AppTheme.textButtonStyle,
            child: Text(
              'work',
              style: TextStyle(
                fontFamily: GoogleFonts.sora().fontFamily,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              controller.redirectToWeb(ProjectURL.resumeDriveURL);
            },
            style: AppTheme.textButtonStyle,
            child: Text(
              'resume',
              style: TextStyle(
                fontFamily: GoogleFonts.sora().fontFamily,
              ),
            ),
          )
        ],
      ),
    );
  }
}
