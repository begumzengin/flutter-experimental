import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WavyText extends StatelessWidget {
  const WavyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('wavy text',
              style: GoogleFonts.nunito(color: Color(0xFFE8D4CC))),
          backgroundColor: Color(0xFFD55C5A)),
      body: const WavyTextPage(),
    );
  }
}

class WavyTextPage extends StatelessWidget {
  const WavyTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: DefaultTextStyle(
                style: const TextStyle(fontSize: 40.0),
                child: AnimatedTextKit(
                  animatedTexts: [WavyAnimatedText('hello world')],
                  isRepeatingAnimation: true,
                ))));
  }
}
