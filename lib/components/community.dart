import 'package:flutter/material.dart';
import 'package:shade_on_text_hover_challenge/constants/app_colors.dart';

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    return const FittedBox(
      child: Text(
        'Community',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w300,
          letterSpacing: -1.4,
          height: 0.65,
          color: AppColors.black,
        ),
      ),
    );
  }
}
