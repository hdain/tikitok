import 'package:flutter/material.dart';
import 'package:tikitok/constants/sizes.dart';
import 'package:tikitok/features/onboarding/interests_screen.dart';

void main() {
  runApp(const TikiTokApp());
}

class TikiTokApp extends StatelessWidget {
  const TikiTokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tikitok',
      theme: ThemeData(
        primaryColor: const Color(0xFFE9435A),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: Sizes.size16 + Sizes.size2,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: const InterestsScreen(),
    );
  }
}