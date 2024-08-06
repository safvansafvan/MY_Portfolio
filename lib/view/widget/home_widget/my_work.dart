import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:myportfolio/controller/global_controller.dart';
import 'package:myportfolio/theme/app_theme.dart';
import 'package:myportfolio/utils/project_details.dart';
import 'package:myportfolio/view/project_view/project_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyWorkWidget extends StatelessWidget {
  const MyWorkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ProjectDetails.projectData;
    return ResponsiveBuilder(builder: (context, size) {
      if (size.deviceScreenType == DeviceScreenType.desktop) {
        return MyWorkWebWidget(data: data);
      }
      if (size.deviceScreenType == DeviceScreenType.tablet ||
          size.deviceScreenType == DeviceScreenType.mobile) {
        return MyWorkTabView(data: data);
      }
      return const SizedBox();
    });
  }
}

class MyWorkTabView extends StatelessWidget {
  const MyWorkTabView({super.key, required this.data});

  final List<Map<String, dynamic>> data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: context.width < 500 ? 20 : 60, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Text('My Work', style: AppTheme.titleStyle),
          ),
          NexonEvProjectCard(data: data),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: MusicPlayerCard(data: data),
          ),
          WalletAppCard(data: data),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: GenieBoatCard(data: data),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: WeatherAppCard(data: data),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: ChatAppCard(data: data),
          )
        ],
      ),
    );
  }
}

class MyWorkWebWidget extends StatelessWidget {
  const MyWorkWebWidget({super.key, required this.data});

  final List<Map<String, dynamic>> data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: context.width < 1136
              ? context.width < 985
                  ? 20
                  : 40
              : 118,
          vertical: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'My Work',
              style: AppTheme.titleStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NexonEvProjectCard(data: data),
                MusicPlayerCard(data: data),
                WalletAppCard(data: data),
              ],
            ),
          ),
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GenieBoatCard(data: data),
                WeatherAppCard(data: data),
                ChatAppCard(data: data)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

////----------------------------------------------WIDGETS------------------------------------------------------------
class ChatAppCard extends StatelessWidget {
  const ChatAppCard({
    super.key,
    required this.data,
  });

  final List<Map<String, dynamic>> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 670,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(data[5]['title'], style: AppTheme.titleStyle),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SizedBox(
              width: 250,
              child: Text(data[5]['subtitle'], style: AppTheme.subtitleStyle),
            ),
          ),
          Container(
            constraints: const BoxConstraints(
                maxHeight: 320, maxWidth: 250, minHeight: 100, minWidth: 100),
            margin: const EdgeInsets.only(top: 25),
            decoration: BoxDecoration(
              image: const DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage('assets/project/chatify/2.png')),
              color: const Color(0xff018369).withOpacity(.2),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black45, width: 2),
              borderRadius: BorderRadius.circular(20),
            ),
            height: 60,
            width: 150,
            child: const Center(
              child: Text(
                'Progressing....',
                style: TextStyle(
                    letterSpacing: 0.4,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87),
              ),
            ),
          )
          // GetBuilder<GlobalController>(builder: (controller) {
          //   return Padding(
          //     padding: const EdgeInsets.only(top: 40),
          //     child: MouseRegion(
          //       onEnter: (_) => controller.walletButtonState(true),
          //       onExit: (_) => controller.walletButtonState(false),
          //       cursor: SystemMouseCursors.click,
          //       child: GestureDetector(
          //         onTap: () => Get.to(
          //           () => ProjectView(projectDetails: data[5]),
          //           curve: Curves.easeInOut,
          //           transition: Transition.fade,
          //           duration: const Duration(milliseconds: 500),
          //         ),
          //         child: AnimatedContainer(
          //           height: 60,
          //           width: 150,
          //           duration: const Duration(milliseconds: 400),
          //           decoration: BoxDecoration(
          //             color: controller.isWalletButton ? Colors.black87 : null,
          //             border: Border.all(color: Colors.black45, width: 2),
          //             borderRadius: BorderRadius.circular(20),
          //           ),
          //           child: Center(
          //             child: Row(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 const SizedBox(width: 5),
          //                 Text(
          //                   'View Project',
          //                   style: TextStyle(
          //                       fontSize: 16,
          //                       fontWeight: FontWeight.w500,
          //                       color: !controller.isWalletButton
          //                           ? Colors.black87
          //                           : Colors.white,
          //                       letterSpacing: 0.4),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   );
          // })
        ],
      ),
    );
  }
}

class GenieBoatCard extends StatelessWidget {
  const GenieBoatCard({
    super.key,
    required this.data,
  });

  final List<Map<String, dynamic>> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 670,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(data[3]['title'], style: AppTheme.titleStyle),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SizedBox(
              width: 400,
              child: Text(data[3]['subtitle'], style: AppTheme.subtitleStyle),
            ),
          ),
          Container(
            constraints: const BoxConstraints(
                maxHeight: 400, maxWidth: 400, minHeight: 200, minWidth: 200),
            margin: const EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage(data[3]['focusImage'].toString())),
              gradient: RadialGradient(
                center: Alignment.bottomRight,
                radius: 1,
                colors: [Colors.blue[200]!, Colors.grey[200]!],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const Spacer(),
          GetBuilder<GlobalController>(builder: (controller) {
            return Padding(
              padding: const EdgeInsets.only(top: 40),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                onEnter: (_) {
                  controller.weatherButtonState(true);
                },
                onExit: (_) => controller.weatherButtonState(false),
                child: GestureDetector(
                  onTap: () => Get.to(
                    () => ProjectView(projectDetails: data[3]),
                    curve: Curves.easeInOut,
                    transition: Transition.fade,
                    duration: const Duration(milliseconds: 500),
                  ),
                  child: AnimatedContainer(
                    height: 60,
                    width: 150,
                    duration: const Duration(milliseconds: 400),
                    decoration: BoxDecoration(
                      color: controller.isWeatherButton ? Colors.black87 : null,
                      border: Border.all(color: Colors.black45, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 5),
                          Text(
                            'View Project',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: !controller.isWeatherButton
                                    ? Colors.black87
                                    : Colors.white,
                                letterSpacing: 0.4),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}

class WeatherAppCard extends StatelessWidget {
  const WeatherAppCard({
    super.key,
    required this.data,
  });

  final List<Map<String, dynamic>> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 670,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints: const BoxConstraints(
                maxHeight: 320, maxWidth: 250, minHeight: 100, minWidth: 100),
            margin: const EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage(data[4]['focusImage'].toString())),
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(data[4]['title'], style: AppTheme.titleStyle),
          ),
          SizedBox(
            width: 250,
            child: Text(data[4]['subtitle'], style: AppTheme.subtitleStyle),
          ),
          const Spacer(),
          GetBuilder<GlobalController>(builder: (controller) {
            return Padding(
              padding: const EdgeInsets.only(top: 40),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                onEnter: (_) => controller.musicButtonState(true),
                onExit: (_) => controller.musicButtonState(false),
                child: GestureDetector(
                  onTap: () {
                    Get.to(
                      () => ProjectView(
                        projectDetails: data[4],
                      ),
                      curve: Curves.easeInOut,
                      transition: Transition.fade,
                      duration: const Duration(milliseconds: 500),
                    );
                  },
                  child: AnimatedContainer(
                    height: 60,
                    width: 150,
                    duration: const Duration(milliseconds: 400),
                    decoration: BoxDecoration(
                      color: controller.isMusicPlayerButton
                          ? Colors.black87
                          : null,
                      border: Border.all(color: Colors.black45, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 5),
                          Text(
                            'View Project',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: !controller.isMusicPlayerButton
                                    ? Colors.black87
                                    : Colors.white,
                                letterSpacing: 0.4),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}

class WalletAppCard extends StatelessWidget {
  const WalletAppCard({
    super.key,
    required this.data,
  });

  final List<Map<String, dynamic>> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 670,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(data[2]['title'], style: AppTheme.titleStyle),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SizedBox(
              width: 250,
              child: Text(data[2]['subtitle'], style: AppTheme.subtitleStyle),
            ),
          ),
          Container(
            constraints: const BoxConstraints(
                maxHeight: 320, maxWidth: 250, minHeight: 100, minWidth: 100),
            margin: const EdgeInsets.only(top: 25),
            decoration: BoxDecoration(
              image: const DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage('assets/project/wallet/focus_image.png')),
              color: const Color(0xff018369).withOpacity(.2),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const Spacer(),
          GetBuilder<GlobalController>(builder: (controller) {
            return Padding(
              padding: const EdgeInsets.only(top: 40),
              child: MouseRegion(
                onEnter: (_) => controller.walletButtonState(true),
                onExit: (_) => controller.walletButtonState(false),
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () => Get.to(
                    () => ProjectView(projectDetails: data[2]),
                    curve: Curves.easeInOut,
                    transition: Transition.fade,
                    duration: const Duration(milliseconds: 500),
                  ),
                  child: AnimatedContainer(
                    height: 60,
                    width: 150,
                    duration: const Duration(milliseconds: 400),
                    decoration: BoxDecoration(
                      color: controller.isWalletButton ? Colors.black87 : null,
                      border: Border.all(color: Colors.black45, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 5),
                          Text(
                            'View Project',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: !controller.isWalletButton
                                    ? Colors.black87
                                    : Colors.white,
                                letterSpacing: 0.4),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}

class MusicPlayerCard extends StatelessWidget {
  const MusicPlayerCard({
    super.key,
    required this.data,
  });

  final List<Map<String, dynamic>> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 670,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints: const BoxConstraints(
                maxHeight: 320, maxWidth: 250, minHeight: 100, minWidth: 100),
            margin: const EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              image: const DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage('assets/project/music/focus_image.png')),
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(data[1]['title'], style: AppTheme.titleStyle),
          ),
          SizedBox(
            width: 250,
            child: Text(data[1]['subtitle'], style: AppTheme.subtitleStyle),
          ),
          const Spacer(),
          GetBuilder<GlobalController>(builder: (controller) {
            return Padding(
              padding: const EdgeInsets.only(top: 40),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                onEnter: (_) => controller.musicButtonState(true),
                onExit: (_) => controller.musicButtonState(false),
                child: GestureDetector(
                  onTap: () {
                    Get.to(
                      () => ProjectView(
                        projectDetails: data[1],
                      ),
                      curve: Curves.easeInOut,
                      transition: Transition.fade,
                      duration: const Duration(milliseconds: 500),
                    );
                  },
                  child: AnimatedContainer(
                    height: 60,
                    width: 150,
                    duration: const Duration(milliseconds: 400),
                    decoration: BoxDecoration(
                      color: controller.isMusicPlayerButton
                          ? Colors.black87
                          : null,
                      border: Border.all(color: Colors.black45, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 5),
                          Text(
                            'View Project',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: !controller.isMusicPlayerButton
                                    ? Colors.black87
                                    : Colors.white,
                                letterSpacing: 0.4),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}

class NexonEvProjectCard extends StatelessWidget {
  const NexonEvProjectCard({
    super.key,
    required this.data,
  });

  final List<Map<String, dynamic>> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 670,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(data[0]['title'], style: AppTheme.titleStyle),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SizedBox(
              width: 400,
              child: Text(data[0]['subtitle'], style: AppTheme.subtitleStyle),
            ),
          ),
          Container(
            constraints: const BoxConstraints(
                maxHeight: 400, maxWidth: 400, minHeight: 200, minWidth: 200),
            margin: const EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              image: const DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage('assets/project/nexon_ev/focus_image.png')),
              gradient: RadialGradient(
                center: Alignment.topLeft,
                radius: 1,
                colors: [Colors.blue[200]!, Colors.grey[300]!],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const Spacer(),
          GetBuilder<GlobalController>(builder: (controller) {
            return Padding(
              padding: const EdgeInsets.only(top: 40),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                onEnter: (_) {
                  controller.nexonButtonState(true);
                },
                onExit: (_) => controller.nexonButtonState(false),
                child: GestureDetector(
                  onTap: () => Get.to(
                    () => ProjectView(projectDetails: data[0]),
                    curve: Curves.easeInOut,
                    transition: Transition.fade,
                    duration: const Duration(milliseconds: 500),
                  ),
                  child: AnimatedContainer(
                    height: 60,
                    width: 150,
                    duration: const Duration(milliseconds: 400),
                    decoration: BoxDecoration(
                      color: controller.isNexonButton ? Colors.black87 : null,
                      border: Border.all(color: Colors.black45, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 5),
                          Text(
                            'View Project',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: !controller.isNexonButton
                                    ? Colors.black87
                                    : Colors.white,
                                letterSpacing: 0.4),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
