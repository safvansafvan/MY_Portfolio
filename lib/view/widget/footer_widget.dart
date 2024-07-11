import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/controller/global_controller.dart';
import 'package:myportfolio/theme/app_theme.dart';
import 'package:myportfolio/utils/project_url.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle blueSmallText = TextStyle(
        decoration: TextDecoration.underline,
        decorationColor: Colors.blue[800],
        fontFamily: GoogleFonts.sora().fontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.blue[800],
        letterSpacing: 0.4);
    final controller = Get.find<GlobalController>();
    return Padding(
      padding: const EdgeInsets.only(top: 200, bottom: 100),
      child: CustomAnimated(
        animationController: controller.animationController,
        animation: controller.animation,
        globalKey: GlobalKey(),
        child: SlideTransition(
          position: controller.animation,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Muhammed Safvan • 2024',
                style: AppTheme.smallText,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "I'm always up for a chat ☕",
                  style: AppTheme.smallText,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Get in touch below or directly at  ',
                    style: AppTheme.smallText,
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                        onTap: () async {
                          await controller.redirectToWeb(ProjectURL.gmailURL);
                        },
                        child: Text('sajusajuptl@gmail.com',
                            style: AppTheme.blueSmallText)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {},
                        child: Text('Home',
                            textAlign: TextAlign.start, style: blueSmallText),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                            onTap: () async {
                              await controller
                                  .redirectToWeb(ProjectURL.resumeDriveURL);
                            },
                            child: Text('Resume', style: blueSmallText)),
                      ),
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () async {
                          await controller
                              .redirectToWeb(ProjectURL.linkedinURL);
                        },
                        child: Image.asset('assets/icon/linkedin.png',
                            height: 20, color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () async {
                            await controller
                                .redirectToWeb(ProjectURL.githubURL);
                          },
                          child: Image.asset('assets/icon/github.png',
                              height: 20, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
