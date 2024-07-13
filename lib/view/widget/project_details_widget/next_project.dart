import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/theme/app_theme.dart';
import 'package:myportfolio/utils/project_details.dart';
import 'package:myportfolio/view/project_view/project_view.dart';

class NextProjectWidget extends StatelessWidget {
  const NextProjectWidget({super.key, required this.projectDetails});

  final Map<String, dynamic> projectDetails;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.width < 948 ? 40 : 110,
      ).copyWith(top: 120),
      child: Column(
        children: [
          const Divider(
            color: Colors.black54,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 16),
                child: Text(
                  'Other Project',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
              ),
              projectDetails['previous'] == ''
                  ? const SizedBox()
                  : Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: ElevatedButton(
                        onPressed: () {
                          moveToPreviousProject();
                        },
                        style: AppTheme.elevatedButtonStyle,
                        child: Text(
                          projectDetails['previous'],
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ),
                    ),
              projectDetails['nextProject'] == ''
                  ? const SizedBox()
                  : Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: ElevatedButton(
                        onPressed: () {
                          moveToNextProject();
                        },
                        style: AppTheme.elevatedButtonStyle,
                        child: Text(
                          projectDetails['nextProject'],
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ),
                    )
            ],
          )
        ],
      ),
    );
  }

  void moveToNextProject() {
    if (projectDetails['title'] == 'Nexon Ev') {
      Get.offAll(
        () => ProjectView(projectDetails: ProjectDetails.projectData[1]),
        curve: Curves.easeInOut,
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 500),
      );
    } else if (projectDetails['title'] == 'Music Player') {
      Get.offAll(
        () => ProjectView(projectDetails: ProjectDetails.projectData[2]),
        curve: Curves.easeInOut,
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 500),
      );
    } else if (projectDetails['title'] == 'Wallet App') {
      Get.offAll(
        () => ProjectView(projectDetails: ProjectDetails.projectData[3]),
        curve: Curves.easeInOut,
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 500),
      );
    } else {}
  }

  void moveToPreviousProject() {
    if (projectDetails['title'] == 'Music Player') {
      Get.offAll(
        () => ProjectView(projectDetails: ProjectDetails.projectData[0]),
        curve: Curves.easeInOut,
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 500),
      );
    } else if (projectDetails['title'] == 'Wallet App') {
      Get.offAll(
        () => ProjectView(projectDetails: ProjectDetails.projectData[1]),
        curve: Curves.easeInOut,
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 500),
      );
    } else if (projectDetails['title'] == 'Weather App') {
      Get.offAll(
        () => ProjectView(projectDetails: ProjectDetails.projectData[2]),
        curve: Curves.easeInOut,
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 500),
      );
    } else {}
  }
}
