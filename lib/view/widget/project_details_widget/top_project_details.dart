import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopProjectDetailsWidget extends StatelessWidget {
  const TopProjectDetailsWidget({super.key, required this.projectDetails});
  final Map<String, dynamic> projectDetails;

  @override
  Widget build(BuildContext context) {
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
        Container(
          margin: const EdgeInsets.only(top: 30, bottom: 20),
          height: 400,
          color: Colors.grey[300],
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
                      child: Text(projectDetails['role'], style: subtitleStyle),
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
                          style: subtitleStyle),
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
                      child: Text(projectDetails['role'], style: subtitleStyle),
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
                              style: subtitleStyle)),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
