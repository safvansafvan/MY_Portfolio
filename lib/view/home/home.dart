import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/controller/global_controller.dart';
import 'package:myportfolio/view/widget/app_bar.dart';
import 'package:myportfolio/view/widget/footer_widget.dart';
import 'package:myportfolio/view/widget/home_widget/header_widget.dart';
import 'package:myportfolio/view/widget/home_widget/my_work.dart';
import 'package:visibility_detector/visibility_detector.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  final ctrl = Get.find<GlobalController>();
  final List<bool> _visibleWidgets = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ctrl.homeScrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAnimatedWidget(0, const AppBarWidget()),
            _buildAnimatedWidget(1, const HeaderWidget()),
            _buildAnimatedWidget(2, const MyWorkWidget()),
            _buildAnimatedWidget(
              3,
              const Padding(
                padding: EdgeInsets.only(bottom: 100),
                child: FooterWidget(isHome: true),
              ),
            ),
            const MadeCard()
          ],
        ),
      ),
    );
  }

  Widget _buildAnimatedWidget(int index, Widget child) {
    return VisibilityDetector(
      key: Key('widget_$index'),
      onVisibilityChanged: (visibilityInfo) {
        if (visibilityInfo.visibleFraction > 0.1 && !_visibleWidgets[index]) {
          setState(() {
            _visibleWidgets[index] = true;
          });
        }
      },
      child: AnimatedOpacity(
        opacity: _visibleWidgets[index] ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.ease,
        child: AnimatedSlide(
          offset: _visibleWidgets[index] ? Offset.zero : const Offset(0.1, 0.1),
          duration: const Duration(milliseconds: 1000),
          curve: Curves.ease,
          child: child,
        ),
      ),
    );
  }
}

class MadeCard extends StatelessWidget {
  const MadeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: double.infinity,
      color: Colors.grey[300],
      child: Center(
        child: Text(
          'Made By Muhammed Safvan With Flutter 3.22',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: GoogleFonts.sora().fontFamily,
              color: Colors.black87,
              fontSize: 12),
        ),
      ),
    );
  }
}
