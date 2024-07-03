import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:myportfolio/view/widget/app_bar.dart';
import 'package:myportfolio/view/widget/footer_widget.dart';
import 'package:myportfolio/view/widget/header_widget.dart';
import 'package:myportfolio/view/widget/my_work.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            controller: context.scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppBarWidget(),
                FadeInLeft(globalKey: GlobalKey(), child: const HeaderWidget()),
                FadeInLeft(globalKey: GlobalKey(), child: const MyWorkWidget()),
                FadeInLeft(globalKey: GlobalKey(), child: const FooterWidget())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
