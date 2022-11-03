import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Typewriter extends StatelessWidget {
  const Typewriter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('typer',
              style: GoogleFonts.nunito(color: Color(0xFFE8D4CC))),
          backgroundColor: Color(0xFFD55C5A)),
      body: const TypewriterPage(),
    );
  }
}

class TypewriterPage extends StatelessWidget {
  const TypewriterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SizedBox(
                width: 380.0,
                child: DefaultTextStyle(
                  style: GoogleFonts.robotoSlab(
                    color: Color(0xFF001B48),
                    fontSize: 30.0,
                  ),
                  child: AnimatedTextKit(animatedTexts: [
                    TyperAnimatedText(
                        'blessed are you whose worthiness gives scope\nbeing had, to triumph; being lacked, to hope.'),
                  ]),
                ))));
  }
}
