import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/controller/global_controller.dart';
import 'package:myportfolio/theme/app_theme.dart';

class ProjectDetailsHeaderWidget extends StatelessWidget {
  const ProjectDetailsHeaderWidget({super.key, required this.projectDetails});

  final Map<String, dynamic> projectDetails;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<GlobalController>();

    TextStyle routeStyle = TextStyle(
        fontFamily: GoogleFonts.sora().fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.grey[500],
        letterSpacing: 0.6);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 130).copyWith(top: 130),
      child: CustomAnimated(
        animation: controller.animation,
        animationController: controller.animationController,
        globalKey: GlobalKey(),
        child: SlideTransition(
          position: controller.animation,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    text: 'Work > ',
                    children: [
                      TextSpan(text: '${projectDetails['type']} >'),
                      TextSpan(text: projectDetails['title'])
                    ],
                    style: routeStyle),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  projectDetails['title'],
                  style: AppTheme.titleStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
