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
        horizontal: context.width < 948
            ? context.width < 500
                ? 20
                : 40
            : 110,
      ).copyWith(top: 120),
      child: Column(
        children: [
          context.width < 500
              ? const Text(
                  'Other Project',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                )
              : const SizedBox(),
          const Divider(
            color: Colors.black54,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              context.width > 500
                  ? const Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Text(
                        'Other Project',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    )
                  : const SizedBox(),
              projectDetails['previous'] == ''
                  ? const SizedBox()
                  : Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: ElevatedButton(
                        onPressed: moveToPreviousProject,
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
                        onPressed: moveToNextProject,
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

  Future<void> moveToNextProject() async {
    if (projectDetails['title'] == 'Nexon Ev') {
      return await Get.offAll(
        () => ProjectView(projectDetails: ProjectDetails.projectData[1]),
        curve: Curves.easeInOut,
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 500),
      );
    } else if (projectDetails['title'] == 'Music Player') {
      return await Get.offAll(
        () => ProjectView(projectDetails: ProjectDetails.projectData[2]),
        curve: Curves.easeInOut,
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 500),
      );
    } else if (projectDetails['title'] == 'Wallet App') {
      return await Get.offAll(
        () => ProjectView(projectDetails: ProjectDetails.projectData[3]),
        curve: Curves.easeInOut,
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 500),
      );
    } else if (projectDetails['title'] == 'Genie Boat') {
      return await Get.offAll(
        () => ProjectView(projectDetails: ProjectDetails.projectData[4]),
        curve: Curves.easeInOut,
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 500),
      );
    }
  }

  Future<void> moveToPreviousProject() async {
    if (projectDetails['title'] == 'Music Player') {
      return await Get.offAll(
        () => ProjectView(projectDetails: ProjectDetails.projectData[0]),
        curve: Curves.easeInOut,
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 500),
      );
    } else if (projectDetails['title'] == 'Wallet App') {
      return await Get.offAll(
        () => ProjectView(projectDetails: ProjectDetails.projectData[1]),
        curve: Curves.easeInOut,
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 500),
      );
    } else if (projectDetails['title'] == 'Genie Boat') {
      return await Get.offAll(
        () => ProjectView(projectDetails: ProjectDetails.projectData[2]),
        curve: Curves.easeInOut,
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 500),
      );
    } else if (projectDetails['title'] == 'Weather App') {
      return await Get.offAll(
        () => ProjectView(projectDetails: ProjectDetails.projectData[3]),
        curve: Curves.easeInOut,
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 500),
      );
    }
  }
}
