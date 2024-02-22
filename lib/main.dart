import 'package:flutter/material.dart';
import 'package:shade_on_text_hover_challenge/home_view.dart';

void main() {
  runApp(const FlutterBytesApp());
}

class FlutterBytesApp extends StatelessWidget {
  const FlutterBytesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterBytes',
      theme: ThemeData(
        fontFamily: 'GigaSans',
      ),
      home: const HomeView(),
    );
  }
}
