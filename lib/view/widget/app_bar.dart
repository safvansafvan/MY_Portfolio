import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/controller/global_controller.dart';
import 'package:myportfolio/controller/utils/project_details.dart';
import 'package:myportfolio/theme/app_theme.dart';
import 'package:myportfolio/view/about/about_screen.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<GlobalController>();
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: CustomAnimated(
        animation: controller.animation,
        animationController: controller.animationController,
        globalKey: GlobalKey(),
        child: SlideTransition(
          position: controller.animation,
          child: AppBar(
            automaticallyImplyLeading: false,
            surfaceTintColor: Colors.transparent,
            title: const Text('Muhammed Safvan'),
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
                  onPressed: () {},
                  style: AppTheme.textButtonStyle,
                  child: Text(
                    'work',
                    style: TextStyle(
                      fontFamily: GoogleFonts.sora().fontFamily,
                    ),
                  )),
              TextButton(
                onPressed: () {
                  controller.redirectToWeb(ProjectDetails.resumeDriveURL);
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
        ),
      ),
    );
  }
}
