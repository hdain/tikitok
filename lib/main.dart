import 'package:flutter/material.dart';
import 'package:tikitok/features/authentication/sign_up_screen.dart';

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
      ),
      home: const SignUpScreen(),
    );
  }
}
