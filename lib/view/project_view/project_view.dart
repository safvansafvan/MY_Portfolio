import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:myportfolio/view/widget/app_bar.dart';
import 'package:myportfolio/view/widget/footer_widget.dart';
import 'package:myportfolio/view/widget/project_details_widget/admin_section.dart';
import 'package:myportfolio/view/widget/project_details_widget/details_header.dart';
import 'package:myportfolio/view/widget/project_details_widget/highlight_features.dart';
import 'package:myportfolio/view/widget/project_details_widget/next_project.dart';
import 'package:myportfolio/view/widget/project_details_widget/scroll_image.dart';
import 'package:myportfolio/view/widget/project_details_widget/top_project_details.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({super.key, required this.projectDetails});

  final Map<String, dynamic> projectDetails;

  @override
  Widget build(BuildContext context) {
    log(projectDetails.toString(), name: '------------------------>');
    return Scaffold(
      body: SingleChildScrollView(
        controller: context.scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 110),
              child: FadeInRight(
                  globalKey: GlobalKey(), child: const AppBarWidget()),
            ),
            FadeInRight(
                globalKey: GlobalKey(),
                child:
                    ProjectDetailsHeaderWidget(projectDetails: projectDetails)),
            FadeInRight(
                globalKey: GlobalKey(),
                child: TopProjectDetailsWidget(projectDetails: projectDetails)),
            ProjectHighlightingFeatures(projectDetails: projectDetails),
            ImageViewWidget(images: projectDetails['images']),
            projectDetails['admin'] != null
                ? AdminWidget(projectDetails: projectDetails)
                : const SizedBox(),
            const NextProjectWidget(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 110),
              child: FooterWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
