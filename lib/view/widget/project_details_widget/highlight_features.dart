import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/theme/app_theme.dart';

class ProjectHighlightingFeatures extends StatelessWidget {
  const ProjectHighlightingFeatures({super.key, required this.projectDetails});

  final Map<String, dynamic> projectDetails;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Showcasing Features', style: AppTheme.titleStyle),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(projectDetails['fullSubtitle'],
                style: AppTheme.subtitleStyle),
          ),
          GridView.builder(
            cacheExtent: 180,
            addSemanticIndexes: true,
            addAutomaticKeepAlives: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, childAspectRatio: 1.2),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: projectDetails['mainSpec'].length,
            itemBuilder: (context, index) {
              return SizedBox(
                child: ShowcasingFeatureCard(
                  text: projectDetails['mainSpec'][index],
                  img: projectDetails['specImages'][index],
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: projectDetails['features'].length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    '-> ${projectDetails['features'][index]}',
                    style: AppTheme.subtitleStyle,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ShowcasingFeatureCard extends StatelessWidget {
  const ShowcasingFeatureCard(
      {super.key, required this.text, required this.img});

  final String text;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey[200]!, width: 5),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Image.asset(img, height: 80),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: GoogleFonts.sora().fontFamily,
                fontSize: 14,
                height: 1.7,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
                letterSpacing: 0.6),
          )
        ],
      ),
    );
  }
}
