import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/controller/global_controller.dart';
import 'package:myportfolio/theme/app_theme.dart';
import 'package:myportfolio/view/widget/about_me_widget/about_buttons.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutMeCardWidget extends StatelessWidget {
  const AboutMeCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<GlobalController>();
    log(context.width.toString());

    return ResponsiveBuilder(builder: (context, size) {
      if (size.deviceScreenType == DeviceScreenType.desktop) {
        return WebWidget(controller: controller);
      }
      if (size.deviceScreenType == DeviceScreenType.tablet ||
          size.deviceScreenType == DeviceScreenType.mobile) {
        return const TabletWidget();
      }
      return const SizedBox();
    });
  }
}

class TabletWidget extends StatelessWidget {
  const TabletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<GlobalController>();
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120, bottom: 40),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/my_img.jpg',
                height: 500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              'About Me',
              style: AppTheme.titleStyle,
            ),
          ),
          AboutMeButtons(controller: controller),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  "Throughout my career, I've been passionate about creating mobile applications that provide exceptional user experiences. With over two years of experience in Flutter development.",
                  style: AppTheme.aboutCardText,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "I have honed my skills in the Dart programming language and the Flutter framework, delivering pixel-perfect and efficient code for both web and mobile applications.",
                    style: AppTheme.aboutCardText,
                  ),
                ),
                Text(
                  "Throughout my career, I've been passionate about creating mobile applications that provide exceptional user experiences. With over two years of experience in Flutter development.",
                  style: AppTheme.aboutCardText,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WebWidget extends StatelessWidget {
  const WebWidget({super.key, required this.controller});

  final GlobalController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 120).copyWith(top: 200),
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
                      padding: EdgeInsets.only(
                          left: context.width < 800 ? 100 : 200),
                      child: Text(
                        'About Me',
                        style: AppTheme.aboutLargeTitleStyle,
                      ),
                    ),
                    const Spacer(),
                    AboutMeButtons(controller: controller),
                  ],
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200]),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: context.width < 1410
                              ? Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 300),
                                      child: Text(
                                        "Throughout my career, I've been passionate about creating mobile applications that provide exceptional user experiences. With over two years of experience in Flutter development.",
                                        style: AppTheme.aboutCardText,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 300, top: 20),
                                      child: Text(
                                        "I have honed my skills in the Dart programming language and the Flutter framework, delivering pixel-perfect and efficient code for both web and mobile applications.",
                                        style: AppTheme.aboutCardText,
                                      ),
                                    )
                                  ],
                                )
                              : Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 300),
                                      child: SizedBox(
                                        width: 350,
                                        child: Text(
                                          "Throughout my career, I've been passionate about creating mobile applications that provide exceptional user experiences. With over two years of experience in Flutter development.",
                                          style: AppTheme.aboutCardText,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 50),
                                      child: SizedBox(
                                        width: 350,
                                        child: Text(
                                          "I have honed my skills in the Dart programming language and the Flutter framework, delivering pixel-perfect and efficient code for both web and mobile applications.",
                                          style: AppTheme.aboutCardText,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20)
                              .copyWith(right: 20, left: 400),
                          child: SizedBox(
                            width: 730,
                            child: Text(
                              "Currently i am working at CredR, I developed applications using Flutter,Dart,RestApi with GetX Mobx,MVVM And MVC architecture and deploying apps on Play Store and App Store Connect.",
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
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/my_img.jpg')),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Positioned(
              left: 265,
              top: 200,
              child: Container(
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadiusDirectional.only(
                    topEnd: Radius.circular(20),
                    bottomStart: Radius.circular(20),
                    topStart: Radius.circular(0),
                    bottomEnd: Radius.circular(20),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Hai i'm Safvan",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
