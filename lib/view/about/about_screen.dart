import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/controller/global_controller.dart';
import 'package:myportfolio/view/widget/about_me_widget/about_me_card.dart';
import 'package:myportfolio/view/widget/about_me_widget/experience_card.dart';
import 'package:myportfolio/view/widget/app_bar.dart';
import 'package:myportfolio/view/widget/footer_widget.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen>
    with SingleTickerProviderStateMixin {
  final ctrl = Get.find<GlobalController>();
  final List<bool> _visibleWidgets = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    log(context.width.toString());
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          controller: ctrl.aboutScrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAnimatedWidget(
                  0, const AppBarWidget(isWorkButtonClick: true)),
              _buildAnimatedWidget(1, const AboutMeCardWidget()),
              _buildAnimatedWidget(2, const ExperienceCardWidget()),
              // _buildAnimatedWidget(3, const SkillWidget()),
              _buildAnimatedWidget(4, const FooterWidget())
            ],
          ),
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
