import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/controller/global_controller.dart';
import 'package:myportfolio/controller/utils/project_details.dart';
import 'package:myportfolio/theme/app_theme.dart';

class AboutMeCardWidget extends StatelessWidget {
  const AboutMeCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<GlobalController>();

    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Text(
                        'About Me',
                        style: AppTheme.aboutLargeTitleStyle,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        MouseRegion(
                          cursor: MouseCursor.defer,
                          child: GestureDetector(
                            onTap: () async {
                              await controller
                                  .redirectToWeb(ProjectDetails.linkedinURL);
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
                        GestureDetector(
                          onTap: () async {
                            await controller
                                .redirectToWeb(ProjectDetails.gmailURL);
                          },
                          child: CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.black87,
                            child: Image.asset('assets/icon/mail.png',
                                height: 20, color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 10),
                        GetBuilder<GlobalController>(builder: (controller) {
                          return MouseRegion(
                            onEnter: (event) {
                              controller.resumeButtonState();
                            },
                            onExit: (event) => controller.resumeButtonState(),
                            child: GestureDetector(
                              onTap: () async {
                                await controller.redirectToWeb(
                                    ProjectDetails.resumeDriveURL);
                              },
                              child: AnimatedContainer(
                                height: 70,
                                width: 150,
                                duration: const Duration(milliseconds: 400),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black87, width: 2),
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
                                            color:
                                                controller.isResumeButtonHover
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
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[300]),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 300,
                                child: Text(
                                  "Throughout my career, I've had the opportunity to work on a variety of projects across different industries and disciplines, including supply chain management, data analysis, financial technology, e-commerce, and digital health and wellness.",
                                  style: AppTheme.aboutCardText,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: SizedBox(
                                  width: 300,
                                  child: Text(
                                    "I also have diverse experience working across a range of settings, including traditional agencies, start-ups, and global corporations, each offering unique challenges and opportunities for growth.",
                                    style: AppTheme.aboutCardText,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20)
                              .copyWith(right: 20),
                          child: SizedBox(
                            width: 630,
                            child: Text(
                              "When I'm not designing, I love to stay active and exercise regularly. I'm also a huge foodie and love travelling! ✈️ 🍣. If you have an opportunity for me that you would like to discuss feel free to contact me!",
                              style: AppTheme.aboutCardText,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
                top: 10,
                bottom: 10,
                left: 10,
                child: Container(
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(20)),
                ))
          ],
        ),
      ),
    );
  }
}
