import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/theme/app_theme.dart';
import 'package:myportfolio/utils/skills_details.dart';
import 'package:myportfolio/view/widget/on_hover.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: context.width < 948 ? 20 : 40,
          horizontal: context.width < 948 ? 40 : 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text('Skills', style: AppTheme.aboutLargeTitleStyle),
          ),
          SizedBox(
            height: 50,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: Skills.skills.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final data = Skills.skills[index];
                log(Skills.skills.length.toString());
                return SkillCard(
                    path: data['icon'],
                    text: data['title'],
                    borderColor: data['color']);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SizedBox(
              height: 50,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: Skills.tools.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final data = Skills.tools[index];
                  log(Skills.tools.length.toString());
                  return SkillCard(
                      path: data['icon'],
                      text: data['title'],
                      borderColor: data['color']);
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: context.width < 948 ? 20 : 50),
            child: SizedBox(
              height: 50,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: Skills.platfoms.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final data = Skills.platfoms[index];
                  log(Skills.platfoms.length.toString());
                  return SkillCard(
                      path: data['icon'],
                      text: data['title'],
                      borderColor: data['color']);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  const SkillCard(
      {super.key,
      required this.path,
      required this.text,
      required this.borderColor});
  final String path;
  final String text;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return OnHoverAnimation(
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                path,
                height: 28,
                width: 28,
              ),
              const SizedBox(width: 5),
              Text(
                text,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}
