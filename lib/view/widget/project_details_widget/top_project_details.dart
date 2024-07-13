import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../controller/global_controller.dart';

class TopProjectDetailsWidget extends StatelessWidget {
  const TopProjectDetailsWidget({super.key, required this.projectDetails});
  final Map<String, dynamic> projectDetails;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<GlobalController>();

    TextStyle titleStyle = TextStyle(
        fontFamily: GoogleFonts.sora().fontFamily,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.black54,
        letterSpacing: 0.6);

    TextStyle subtitleStyle = TextStyle(
        fontFamily: GoogleFonts.sora().fontFamily,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.black87,
        letterSpacing: 0.6);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              log(projectDetails['applink']);
              controller.redirectToWeb(Uri.parse(projectDetails['applink']));
            },
            child: Container(
              margin: const EdgeInsets.only(top: 30, bottom: 20),
              height: context.width < 948 ? null : 400,
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icon/shop_bag.png', height: 50),
                      Text(projectDetails['fullTitle'],
                          style: TextStyle(
                              fontFamily: GoogleFonts.sora().fontFamily,
                              fontSize: context.width < 949
                                  ? context.width < 500
                                      ? 15
                                      : 19
                                  : 26,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                              letterSpacing: 0.6))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        projectDetails['focusImage'],
                        height: context.width < 948 ? 250 : null,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: context.width < 1119 ? 60 : 110, vertical: 20),
          child: context.width < 948
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Prototype(titleStyle: titleStyle),
                    Role(
                        titleStyle: titleStyle,
                        projectDetails: projectDetails,
                        subtitleStyle: subtitleStyle),
                    ProjectDuration(
                        titleStyle: titleStyle,
                        projectDetails: projectDetails,
                        subtitleStyle: subtitleStyle),
                    SupportDevice(
                        titleStyle: titleStyle,
                        projectDetails: projectDetails,
                        subtitleStyle: subtitleStyle),
                    Tools(
                        titleStyle: titleStyle,
                        projectDetails: projectDetails,
                        subtitleStyle: subtitleStyle),
                    const SizedBox(height: 20),
                    GetApp(
                        titleStyle: titleStyle,
                        controller: controller,
                        projectDetails: projectDetails),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Prototype(titleStyle: titleStyle),
                    Role(
                        titleStyle: titleStyle,
                        projectDetails: projectDetails,
                        subtitleStyle: subtitleStyle),
                    ProjectDuration(
                        titleStyle: titleStyle,
                        projectDetails: projectDetails,
                        subtitleStyle: subtitleStyle),
                    SupportDevice(
                        titleStyle: titleStyle,
                        projectDetails: projectDetails,
                        subtitleStyle: subtitleStyle),
                    Tools(
                        titleStyle: titleStyle,
                        projectDetails: projectDetails,
                        subtitleStyle: subtitleStyle),
                    GetApp(
                        titleStyle: titleStyle,
                        controller: controller,
                        projectDetails: projectDetails),
                  ],
                ),
        )
      ],
    );
  }
}

///-------------------------------------------------------Widgets----------------------------------------------------------

class GetApp extends StatelessWidget {
  const GetApp({
    super.key,
    required this.titleStyle,
    required this.controller,
    required this.projectDetails,
  });

  final TextStyle titleStyle;
  final GlobalController controller;
  final Map<String, dynamic> projectDetails;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Column(
        crossAxisAlignment: context.width < 948
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Get App',
            style: titleStyle,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black87)),
              onPressed: () async {
                await controller
                    .redirectToWeb(Uri.parse(projectDetails['applink']));
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  'Get',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Tools extends StatelessWidget {
  const Tools({
    super.key,
    required this.titleStyle,
    required this.projectDetails,
    required this.subtitleStyle,
  });

  final TextStyle titleStyle;
  final Map<String, dynamic> projectDetails;
  final TextStyle subtitleStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: context.width < 948
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          Text(
            'Tools/Framwork',
            style: titleStyle,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
                width: 220,
                child: Text(projectDetails['tools'],
                    textAlign: TextAlign.center, style: subtitleStyle)),
          )
        ],
      ),
    );
  }
}

class SupportDevice extends StatelessWidget {
  const SupportDevice({
    super.key,
    required this.titleStyle,
    required this.projectDetails,
    required this.subtitleStyle,
  });

  final TextStyle titleStyle;
  final Map<String, dynamic> projectDetails;
  final TextStyle subtitleStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Column(
        crossAxisAlignment: context.width < 948
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Support Device',
            style: titleStyle,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              projectDetails['device'],
              textAlign: TextAlign.center,
              style: subtitleStyle,
            ),
          )
        ],
      ),
    );
  }
}

class ProjectDuration extends StatelessWidget {
  const ProjectDuration({
    super.key,
    required this.titleStyle,
    required this.projectDetails,
    required this.subtitleStyle,
  });

  final TextStyle titleStyle;
  final Map<String, dynamic> projectDetails;
  final TextStyle subtitleStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Column(
        crossAxisAlignment: context.width < 948
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Duration',
            style: titleStyle,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text("${projectDetails['days']} Days",
                textAlign: TextAlign.center, style: subtitleStyle),
          )
        ],
      ),
    );
  }
}

class Role extends StatelessWidget {
  const Role({
    super.key,
    required this.titleStyle,
    required this.projectDetails,
    required this.subtitleStyle,
  });

  final TextStyle titleStyle;
  final Map<String, dynamic> projectDetails;
  final TextStyle subtitleStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Column(
        crossAxisAlignment: context.width < 948
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Role',
            style: titleStyle,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(projectDetails['role'],
                textAlign: TextAlign.center, style: subtitleStyle),
          )
        ],
      ),
    );
  }
}

class Prototype extends StatelessWidget {
  const Prototype({
    super.key,
    required this.titleStyle,
  });

  final TextStyle titleStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Column(
        crossAxisAlignment: context.width < 948
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Prototype',
            style: titleStyle,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black87)),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  'Figma',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
