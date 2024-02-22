import 'package:flutter/material.dart';
import 'package:shade_on_text_hover_challenge/components/shade_on_hover.dart';
import 'package:shade_on_text_hover_challenge/constants/app_colors.dart';

class FlutterBytes extends StatelessWidget {
  const FlutterBytes({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShadeOnHover(
      child: FittedBox(
        child: Text(
          'FlutterBytes',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            letterSpacing: -1.4,
            height: 1,
            color: AppColors.lightBlue,
          ),
        ),
      ),
    );
  }
}
