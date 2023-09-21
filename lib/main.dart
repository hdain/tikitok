import 'package:flutter/material.dart';
import 'package:tikitok/constants/gaps.dart';
import 'package:tikitok/constants/sizes.dart';

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
      home: const Padding(
        padding: EdgeInsets.all(Sizes.size14),
        child: Row(
          children: [
            Text('hello'),
            Gaps.h20,
            Text('hello'),
          ],
        ),
      ),
    );
  }
}
