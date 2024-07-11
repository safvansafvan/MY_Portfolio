import 'package:flutter/material.dart';
import 'package:myportfolio/theme/app_theme.dart';

class NextProjectWidget extends StatelessWidget {
  const NextProjectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 110,
      ).copyWith(top: 120),
      child: Column(
        children: [
          const Divider(
            color: Colors.black54,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 16),
                child: Text(
                  'Other Project',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: ElevatedButton(
                    onPressed: () {},
                    style: AppTheme.elevatedButtonStyle,
                    child: const Text(
                      'Previous',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.white),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: ElevatedButton(
                    onPressed: () {},
                    style: AppTheme.elevatedButtonStyle,
                    child: const Text(
                      'Next',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.white),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
