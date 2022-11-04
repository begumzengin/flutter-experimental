import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorizeText extends StatelessWidget {
  const ColorizeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('colorize',
              style: GoogleFonts.nunito(color: Color(0xFFE8D4CC))),
          backgroundColor: Color(0xFFD55C5A)),
      body: const ColorizeTextPage(),
    );
  }
}

const colorizeColors = [
  Color(0xFFDA2864),
  Color(0xFFEC6091),
  Color(0xFFF2A7BE),
  Color(0xFF9AE1E2),
  Color(0xFF16A5A3),
];

final colorizeTextStyle = GoogleFonts.bungee(fontSize: 50.0);

class ColorizeTextPage extends StatelessWidget {
  const ColorizeTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SizedBox(
        width: 250.0,
        child: AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText('askim',
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
                speed: const Duration(milliseconds: 1000)),
          ],
        ),
      )),
    );
  }
}
