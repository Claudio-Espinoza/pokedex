import 'package:flutter/material.dart';
import 'package:pokedex_demo/core/configs/themes/app_themes.dart';
import 'package:pokedex_demo/presentation/landing/page/landing.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pokedex',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      home: const LandingPage(),
    );
  }
}
