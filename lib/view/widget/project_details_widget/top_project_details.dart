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
              height: 400,
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
                              fontSize: 26,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                              letterSpacing: 0.6))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(projectDetails['focusImage']),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 90,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black87)),
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Text(
                            'Figma',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 90,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
              ),
              SizedBox(
                height: 90,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
              ),
              SizedBox(
                height: 90,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
              ),
              SizedBox(
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                              textAlign: TextAlign.center,
                              style: subtitleStyle)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 90,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black87)),
                        onPressed: () async {
                          await controller.redirectToWeb(
                              Uri.parse(projectDetails['applink']));
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Text(
                            'Get',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
