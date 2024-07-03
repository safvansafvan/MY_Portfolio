import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/controller/global_controller.dart';
import 'package:myportfolio/controller/utils/project_details.dart';
import 'package:myportfolio/theme/app_theme.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<GlobalController>();
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: AppBar(
        surfaceTintColor: Colors.transparent,
        title: const Text('Muhammed Safvan'),
        actions: [
          TextButton(
            onPressed: () {},
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
              controller.redirectToWeb(ProjectDetails.resumeURL);
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
