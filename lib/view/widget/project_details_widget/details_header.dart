import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/theme/app_theme.dart';

class ProjectDetailsHeaderWidget extends StatelessWidget {
  const ProjectDetailsHeaderWidget({super.key, required this.projectDetails});

  final Map<String, dynamic> projectDetails;

  @override
  Widget build(BuildContext context) {
    TextStyle routeStyle = TextStyle(
        fontFamily: GoogleFonts.sora().fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.grey[500],
        letterSpacing: 0.6);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 130).copyWith(top: 130),
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
              projectDetails['fullTitle'],
              style: AppTheme.titleStyle,
            ),
          ),
        ],
      ),
    );
  }
}