import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:get/get.dart';

import 'package:myportfolio/controller/global_controller.dart';
import 'package:myportfolio/theme/app_theme.dart';
import 'package:myportfolio/utils/project_details.dart';
import 'package:myportfolio/view/project_view/project_view.dart';

class MyWorkWidget extends StatelessWidget {
  const MyWorkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ProjectDetails.projectData;
    final controller = Get.find<GlobalController>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 60),
      child: CustomAnimated(
        animationController: controller.animationController,
        animation: controller.animation,
        globalKey: GlobalKey(),
        child: SlideTransition(
          position: controller.animation,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text('My Work', style: AppTheme.titleStyle),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //
                    SizedBox(
                      height: 670,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(data[0]['title'], style: AppTheme.titleStyle),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: SizedBox(
                              width: 400,
                              child: Text(data[0]['subtitle'],
                                  style: AppTheme.subtitleStyle),
                            ),
                          ),
                          Container(
                            constraints: const BoxConstraints(
                                maxHeight: 400,
                                maxWidth: 400,
                                minHeight: 200,
                                minWidth: 200),
                            margin: const EdgeInsets.only(top: 15),
                            decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          const Spacer(),
                          GetBuilder<GlobalController>(builder: (controller) {
                            return MouseRegion(
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
                                  margin: const EdgeInsets.only(top: 40),
                                  height: 60,
                                  width: 150,
                                  duration: const Duration(milliseconds: 400),
                                  decoration: BoxDecoration(
                                    color: controller.isNexonButton
                                        ? Colors.black87
                                        : null,
                                    border: Border.all(
                                        color: Colors.black45, width: 2),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                            );
                          }),
                        ],
                      ),
                    ),

                    //
                    SizedBox(
                      height: 670,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            constraints: const BoxConstraints(
                                maxHeight: 320,
                                maxWidth: 250,
                                minHeight: 100,
                                minWidth: 100),
                            margin: const EdgeInsets.only(bottom: 15),
                            decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text(data[1]['title'],
                                style: AppTheme.titleStyle),
                          ),
                          SizedBox(
                            width: 250,
                            child: Text(data[1]['subtitle'],
                                style: AppTheme.subtitleStyle),
                          ),
                          const Spacer(),
                          MouseRegion(
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
                                margin: const EdgeInsets.only(top: 40),
                                height: 60,
                                width: 150,
                                duration: const Duration(milliseconds: 400),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black45, width: 2),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 5),
                                      Text(
                                        'View Project',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black87,
                                            letterSpacing: 0.4),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 670,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(data[2]['title'], style: AppTheme.titleStyle),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: SizedBox(
                              width: 250,
                              child: Text(data[2]['subtitle'],
                                  style: AppTheme.subtitleStyle),
                            ),
                          ),
                          Container(
                            constraints: const BoxConstraints(
                                maxHeight: 320,
                                maxWidth: 250,
                                minHeight: 100,
                                minWidth: 100),
                            margin: const EdgeInsets.only(top: 25),
                            decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          const Spacer(),
                          MouseRegion(
                            child: GestureDetector(
                              onTap: () => Get.to(
                                () => ProjectView(projectDetails: data[3]),
                                curve: Curves.easeInOut,
                                transition: Transition.fade,
                                duration: const Duration(milliseconds: 500),
                              ),
                              child: AnimatedContainer(
                                margin: const EdgeInsets.only(top: 40),
                                height: 60,
                                width: 150,
                                duration: const Duration(milliseconds: 400),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black45, width: 2),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 5),
                                      Text(
                                        'View Project',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black87,
                                            letterSpacing: 0.4),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
