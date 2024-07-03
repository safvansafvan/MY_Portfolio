import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:get/get.dart';
import 'package:myportfolio/controller/global_controller.dart';
import 'package:myportfolio/theme/app_theme.dart';

class MyWorkWidget extends StatelessWidget {
  const MyWorkWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<GlobalController>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 60),
      child: CustomAnimated(
        animationController: controller.animationController,
        animation: controller.animation,
        globalKey: GlobalKey(),
        child: SlideTransition(
          position: controller.animation,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text('My Work', style: AppTheme.titleStyle),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Shopify Globe', style: AppTheme.titleStyle),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Text(
                              'Annual Black Friday Cyber Monday live globe and\nadmin integration.',
                              style: AppTheme.subtitleStyle),
                        ),
                        Container(
                          constraints: const BoxConstraints(
                              maxHeight: 400,
                              maxWidth: 400,
                              minHeight: 200,
                              minWidth: 200),
                          margin: const EdgeInsets.only(top: 15),
                          decoration: BoxDecoration(
                              color: Colors.blue[200],
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        MouseRegion(
                          child: InkWell(
                            child: AnimatedContainer(
                              margin: const EdgeInsets.only(top: 40),
                              height: 60,
                              width: 150,
                              duration: const Duration(milliseconds: 400),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black45, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(width: 5),
                                    Text(
                                      'View Project',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black87,
                                          letterSpacing: 0.4),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          constraints: const BoxConstraints(
                              maxHeight: 320,
                              maxWidth: 250,
                              minHeight: 100,
                              minWidth: 100),
                          margin: const EdgeInsets.only(bottom: 15),
                          decoration: BoxDecoration(
                              color: Colors.blue[200],
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Text('Trac', style: AppTheme.titleStyle),
                        ),
                        Text(
                            'A personal management\napplication that helps students\nkeep track of tasks, deadlines\nand facilitate planning of group\nwork.',
                            style: AppTheme.subtitleStyle),
                        MouseRegion(
                          child: InkWell(
                            child: AnimatedContainer(
                              margin: const EdgeInsets.only(top: 40),
                              height: 60,
                              width: 150,
                              duration: const Duration(milliseconds: 400),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black45, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(width: 5),
                                    Text(
                                      'View Project',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black87,
                                          letterSpacing: 0.4),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Text('Goodehealth\nDashboard',
                              style: AppTheme.titleStyle),
                        ),
                        Text(
                            'End-to-end redesign, with the\nobjective of boosting user\nretention and conversion.',
                            style: AppTheme.subtitleStyle),
                        Container(
                          constraints: const BoxConstraints(
                              maxHeight: 320,
                              maxWidth: 250,
                              minHeight: 100,
                              minWidth: 100),
                          margin: const EdgeInsets.only(top: 25),
                          decoration: BoxDecoration(
                              color: Colors.blue[200],
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        MouseRegion(
                          child: InkWell(
                            child: AnimatedContainer(
                              margin: const EdgeInsets.only(top: 40),
                              height: 60,
                              width: 150,
                              duration: const Duration(milliseconds: 400),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black45, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(width: 5),
                                    Text(
                                      'View Project',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black87,
                                          letterSpacing: 0.4),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
