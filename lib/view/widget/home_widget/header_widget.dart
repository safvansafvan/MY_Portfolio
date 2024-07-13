import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/controller/global_controller.dart';
import 'package:myportfolio/utils/project_url.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<GlobalController>();
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: context.width < 948 ? 60 : 118,
          vertical: context.width < 948 ? 30 : 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Hi, I'm Safvan",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: GoogleFonts.sora().fontFamily,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                    letterSpacing: 1),
              ),
              Image.network(
                'assets/gif/hand.gif',
                height: 30,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 35),
            child: RichText(
              text: TextSpan(
                  text: 'A Flutter developer from India',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                      fontFamily: GoogleFonts.sora().fontFamily,
                      letterSpacing: 1.2),
                  children: const [
                    TextSpan(
                      text: '  with a passion for crafting elegant and ',
                      style: TextStyle(
                        color: Colors.black38,
                      ),
                    ),
                    TextSpan(text: 'intuitive data-driven experiences.'),
                  ]),
            ),
          ),
          Row(
            children: [
              GetBuilder<GlobalController>(builder: (controller) {
                return MouseRegion(
                  cursor: SystemMouseCursors.click,
                  onEnter: (event) {
                    controller.resumeButtonState();
                  },
                  onExit: (event) => controller.resumeButtonState(),
                  child: GestureDetector(
                    onTap: () async {
                      await controller.redirectToWeb(ProjectURL.resumeDriveURL);
                    },
                    child: AnimatedContainer(
                      height: 70,
                      width: 150,
                      duration: const Duration(milliseconds: 400),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black87, width: 2),
                          borderRadius: BorderRadius.circular(20),
                          color: controller.isResumeButtonHover
                              ? Colors.black87
                              : null),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icon/notes.png',
                                height: 20,
                                color: controller.isResumeButtonHover
                                    ? Colors.white
                                    : Colors.black),
                            const SizedBox(width: 5),
                            Text(
                              'Resume',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: controller.isResumeButtonHover
                                      ? Colors.white
                                      : Colors.black87,
                                  letterSpacing: 0.4),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
              const SizedBox(width: 15),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () async {
                    await controller.redirectToWeb(ProjectURL.linkedinURL);
                  },
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.black87,
                    child: Image.asset('assets/icon/linkedin.png',
                        height: 20, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () async {
                    await controller.redirectToWeb(ProjectURL.gmailURL);
                  },
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.black87,
                    child: Image.asset('assets/icon/mail.png',
                        height: 20, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
