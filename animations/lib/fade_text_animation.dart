import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FadeText extends StatelessWidget {
  const FadeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('fade text',
              style: GoogleFonts.nunito(color: Color(0xFFE8D4CC))),
          backgroundColor: Color(0xFFD55C5A)),
      body: const FadeTextPage(),
    );
  }
}

class FadeTextPage extends StatelessWidget {
  const FadeTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SizedBox(
                width: 250.0,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF002D40),
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      FadeAnimatedText('do it!'),
                      FadeAnimatedText('do it right!'),
                      FadeAnimatedText('do it right now!'),
                    ],
                  ),
                ))));
  }
}
