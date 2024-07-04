import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:myportfolio/view/widget/about_me_widget/about_me_card.dart';
import 'package:myportfolio/view/widget/app_bar.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 130),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            controller: context.scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [const AppBarWidget(), AboutMeCardWidget()],
            ),
          ),
        ),
      ),
    );
  }
}
