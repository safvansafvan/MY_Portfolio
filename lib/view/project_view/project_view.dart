import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:myportfolio/view/widget/app_bar.dart';
import 'package:myportfolio/view/widget/project_details_widget/details_header.dart';
import 'package:myportfolio/view/widget/project_details_widget/highlight_features.dart';
import 'package:myportfolio/view/widget/project_details_widget/scroll_image.dart';
import 'package:myportfolio/view/widget/project_details_widget/top_project_details.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({super.key, required this.projectDetails});

  final Map<String, dynamic> projectDetails;

  @override
  Widget build(BuildContext context) {
    log(projectDetails.toString(), name: '------------------------>');
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          controller: context.scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 110),
                child: FadeInRight(
                    globalKey: GlobalKey(), child: const AppBarWidget()),
              ),
              ProjectDetailsHeaderWidget(projectDetails: projectDetails),
              TopProjectDetailsWidget(projectDetails: projectDetails),
              ProjectHighlightingFeatures(projectDetails: projectDetails),
              ImageViewWidget(projectDetails: projectDetails)
            ],
          ),
        ),
      ),
    );
  }
}
