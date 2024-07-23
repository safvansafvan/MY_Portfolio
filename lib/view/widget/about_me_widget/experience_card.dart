import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/theme/app_theme.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ExperienceCardWidget extends StatelessWidget {
  const ExperienceCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = TextStyle(
        fontFamily: GoogleFonts.sora().fontFamily,
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: Colors.black87,
        letterSpacing: 0.6);
    TextStyle secondaryStyle = TextStyle(
        fontFamily: GoogleFonts.sora().fontFamily,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.black87,
        letterSpacing: 0.6);
    TextStyle subtitleStyle = TextStyle(
        fontFamily: GoogleFonts.sora().fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.black45,
        letterSpacing: 0.6);
    return ResponsiveBuilder(builder: (context, size) {
      if (size.deviceScreenType == DeviceScreenType.desktop) {
        return ExperienceWebWidget(
            secondaryStyle: secondaryStyle,
            subtitleStyle: subtitleStyle,
            titleStyle: titleStyle);
      }
      if (size.deviceScreenType == DeviceScreenType.tablet ||
          size.deviceScreenType == DeviceScreenType.mobile) {
        return ExperienceMobileWidget(
            secondaryStyle: secondaryStyle,
            subtitleStyle: subtitleStyle,
            titleStyle: titleStyle);
      }
      return const SizedBox();
    });
  }
}

/// -------------------------------------------MOBILE SECTION----------------------------------------------

class ExperienceMobileWidget extends StatelessWidget {
  const ExperienceMobileWidget(
      {super.key,
      required this.titleStyle,
      required this.secondaryStyle,
      required this.subtitleStyle});
  final TextStyle titleStyle;
  final TextStyle secondaryStyle;
  final TextStyle subtitleStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: context.width < 500 ? 20 : 60, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Experience',
            style: AppTheme.titleStyle,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Credr',
                  style: titleStyle,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Dec 2023 - Present',
                    style: secondaryStyle,
                  ),
                ),
                Text(
                  'Bengaluru,Karnataka',
                  style: secondaryStyle,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('SDE 1', style: titleStyle),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        child: Text(
                          "I developed pixel-perfect user interfaces for web and mobile applications using Flutter, focusing on efficient and reusable coding patterns. My responsibilities included pair testing, unit testing after API integration with the backend team, and ensuring the software's functionality and quality. I successfully deployed applications on both the Play Store and App Store Connect. Notably, I worked on applications such as Credr Inspecto, Service Runner, Wheels World, OEM Exchange, and Zoop, as well as an auto-scheduling dashboard for web.",
                          style: subtitleStyle,
                        ),
                      ),
                      Text('Auto Scheduling Dashboard', style: titleStyle),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        child: Text(
                          "I developed the auto-scheduling dashboard application using Flutter web, employing GetX for state management, stomp_dart_client for real-time communication, and Google Maps API for location services. This comprehensive approach ensured a robust and user-friendly application that met our clients' needs effectively.",
                          style: subtitleStyle,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'Brototype',
                    style: titleStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Dec 2022 - Nov 2023',
                    style: secondaryStyle,
                  ),
                ),
                Text(
                  'Kozhikode,Kerala',
                  style: secondaryStyle,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Flutter Developer Intern', style: titleStyle),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        child: Text(
                            "Developed diverse projects within deadlines by contributing 12+ hoursa day in an industrial encamped environment , leveraging databases like Firebase, Hive and SQLite, implementing REST APIs, and utilizing MVVM and MVC structures.",
                            style: subtitleStyle),
                      ),
                      Text('Projects', style: titleStyle),
                      Text(
                          "Developed the Nexon EV booking application with an accompanying admin application. Additionally,I created a music player, a money manager application and a weather application.",
                          style: subtitleStyle),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Credr',
                              style: titleStyle,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                'Dec 2023 - Present',
                                style: secondaryStyle,
                              ),
                            ),
                            Text(
                              'Bengaluru,Karnataka',
                              style: secondaryStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------WEB SECTIONS ----------------------------------------------------

class ExperienceWebWidget extends StatelessWidget {
  const ExperienceWebWidget(
      {super.key,
      required this.titleStyle,
      required this.secondaryStyle,
      required this.subtitleStyle});

  final TextStyle titleStyle;
  final TextStyle secondaryStyle;
  final TextStyle subtitleStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Experience',
            style: AppTheme.aboutLargeTitleStyle,
          ),
          ExperienceCardOne(
              titleStyle: titleStyle,
              secondaryStyle: secondaryStyle,
              subtitleStyle: subtitleStyle),
          ExperienceCardTwo(
              titleStyle: titleStyle,
              secondaryStyle: secondaryStyle,
              subtitleStyle: subtitleStyle)
        ],
      ),
    );
  }
}

class ExperienceCardTwo extends StatelessWidget {
  const ExperienceCardTwo({
    super.key,
    required this.titleStyle,
    required this.secondaryStyle,
    required this.subtitleStyle,
  });

  final TextStyle titleStyle;
  final TextStyle secondaryStyle;
  final TextStyle subtitleStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50, bottom: 30),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[200]!, width: 4),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Brototype',
                  style: titleStyle,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Dec 2022 - Nov 2023',
                    style: secondaryStyle,
                  ),
                ),
                Text(
                  'Kozhikode,Kerala',
                  style: secondaryStyle,
                )
              ],
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Flutter Developer Intern', style: titleStyle),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: Text(
                          "Developed diverse projects within deadlines by contributing 12+ hoursa day in an industrial encamped environment , leveraging databases like Firebase, Hive and SQLite, implementing REST APIs, and utilizing MVVM and MVC structures.",
                          style: subtitleStyle),
                    ),
                    Text('Projects', style: titleStyle),
                    Text(
                        "Developed the Nexon EV booking application with an accompanying admin application. Additionally,I created a music player, a money manager application and a weather application.",
                        style: subtitleStyle),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ExperienceCardOne extends StatelessWidget {
  const ExperienceCardOne({
    super.key,
    required this.titleStyle,
    required this.secondaryStyle,
    required this.subtitleStyle,
  });

  final TextStyle titleStyle;
  final TextStyle secondaryStyle;
  final TextStyle subtitleStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50, bottom: 30),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[200]!, width: 4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Credr',
                  style: titleStyle,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Dec 2023 - Present',
                    style: secondaryStyle,
                  ),
                ),
                Text(
                  'Bengaluru,Karnataka',
                  style: secondaryStyle,
                ),
              ],
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('SDE 1', style: titleStyle),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: Text(
                        "I developed pixel-perfect user interfaces for web and mobile applications using Flutter, focusing on efficient and reusable coding patterns. My responsibilities included pair testing, unit testing after API integration with the backend team, and ensuring the software's functionality and quality. I successfully deployed applications on both the Play Store and App Store Connect. Notably, I worked on applications such as Credr Inspecto, Service Runner, Wheels World, OEM Exchange, and Zoop, as well as an auto-scheduling dashboard for web.",
                        style: subtitleStyle,
                      ),
                    ),
                    Text('Auto Scheduling Dashboard', style: titleStyle),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: Text(
                        "I developed the auto-scheduling dashboard application using Flutter web, employing GetX for state management, stomp_dart_client for real-time communication, and Google Maps API for location services. This comprehensive approach ensured a robust and user-friendly application that met our clients' needs effectively.",
                        style: subtitleStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
