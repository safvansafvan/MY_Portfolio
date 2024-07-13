import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/controller/global_controller.dart';
import 'package:myportfolio/view/widget/app_bar.dart';
import 'package:myportfolio/view/widget/footer_widget.dart';
import 'package:myportfolio/view/widget/project_details_widget/admin_section.dart';
import 'package:myportfolio/view/widget/project_details_widget/details_header.dart';
import 'package:myportfolio/view/widget/project_details_widget/highlight_features.dart';
import 'package:myportfolio/view/widget/project_details_widget/next_project.dart';
import 'package:myportfolio/view/widget/project_details_widget/scroll_image.dart';
import 'package:myportfolio/view/widget/project_details_widget/top_project_details.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ProjectView extends StatefulWidget {
  const ProjectView({super.key, required this.projectDetails});

  final Map<String, dynamic> projectDetails;

  @override
  State<ProjectView> createState() => _ProjectViewState();
}

class _ProjectViewState extends State<ProjectView>
    with SingleTickerProviderStateMixin {
  final ctrl = Get.find<GlobalController>();
  final List<bool> _visibleWidgets = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    log(widget.projectDetails.toString(), name: '------------------------>');
    return Scaffold(
      body: SingleChildScrollView(
        controller: ctrl.projectScrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAnimatedWidget(
              0,
              const AppBarWidget(isWorkButtonClick: true),
            ),
            _buildAnimatedWidget(
                1,
                ProjectDetailsHeaderWidget(
                    projectDetails: widget.projectDetails)),
            _buildAnimatedWidget(2,
                TopProjectDetailsWidget(projectDetails: widget.projectDetails)),
            _buildAnimatedWidget(
                3,
                ProjectHighlightingFeatures(
                    projectDetails: widget.projectDetails)),
            _buildAnimatedWidget(
                4, ImageViewWidget(images: widget.projectDetails['images'])),
            widget.projectDetails['admin'] != null
                ? _buildAnimatedWidget(
                    5, AdminWidget(projectDetails: widget.projectDetails))
                : const SizedBox(),
            _buildAnimatedWidget(
                6, NextProjectWidget(projectDetails: widget.projectDetails)),
            _buildAnimatedWidget(
              7,
              const FooterWidget(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimatedWidget(int index, Widget child) {
    return VisibilityDetector(
      key: Key('widget_$index'),
      onVisibilityChanged: (visibilityInfo) {
        if (visibilityInfo.visibleFraction > 0.1 && !_visibleWidgets[index]) {
          setState(() {
            _visibleWidgets[index] = true;
          });
        }
      },
      child: AnimatedOpacity(
        opacity: _visibleWidgets[index] ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.ease,
        child: AnimatedSlide(
          offset: _visibleWidgets[index] ? Offset.zero : const Offset(0.1, 0.1),
          duration: const Duration(milliseconds: 1000),
          curve: Curves.ease,
          child: child,
        ),
      ),
    );
  }
}
