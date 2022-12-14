import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RotateText extends StatelessWidget {
  const RotateText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('rotating text',
              style: GoogleFonts.nunito(color: Color(0xFFE8D4CC))),
          backgroundColor: Color(0xFFD55C5A)),
      body: const RotateTextPage(),
    );
  }
}

class RotateTextPage extends StatelessWidget {
  const RotateTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
        const SizedBox(width: 20.0, height: 100.0),
        const Text(
          'be',
          style: TextStyle(fontSize: 43.0, color: Color(0xFF321E25)),
        ),
        const SizedBox(width: 20.0, height: 100.0),
        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 40.0,
            fontFamily: 'Horizon',
            color: Color(0xFF894242),
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              RotateAnimatedText('awesome'),
              RotateAnimatedText('optimistic'),
              RotateAnimatedText('different'),
            ],
            totalRepeatCount: 10,
          ),
        ),
      ]),
    ));
  }
}
