import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/controller/global_controller.dart';
import 'package:myportfolio/utils/project_url.dart';

class AboutMeButtons extends StatelessWidget {
  const AboutMeButtons({
    super.key,
    required this.controller,
  });

  final GlobalController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
        ),
        const SizedBox(width: 10),
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
                    color:
                        controller.isResumeButtonHover ? Colors.black87 : null),
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
      ],
    );
  }
}
