import 'package:flutter/material.dart';
import 'package:shade_on_text_hover_challenge/components/community.dart';
import 'package:shade_on_text_hover_challenge/components/flutter_bytes.dart';
import 'package:shade_on_text_hover_challenge/constants/app_colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.white,
              AppColors.white,
              AppColors.lightBlue,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        height: screenSize.height,
        width: screenSize.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: screenSize.width * 0.85,
              child: const FlutterBytes(),
            ),
            SizedBox(
              width: screenSize.width * 0.8,
              child: const Community(),
            ),
          ],
        ),
      ),
    );
  }
}
