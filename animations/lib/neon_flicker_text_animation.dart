import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NeonFlicker extends StatelessWidget {
  const NeonFlicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('neon flicker',
              style: GoogleFonts.nunito(color: Color(0xFFE8D4CC))),
          backgroundColor: Color(0xFFD55C5A)),
      body: const NeonFlickerPage(),
    );
  }
}

class NeonFlickerPage extends StatelessWidget {
  const NeonFlickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SizedBox(
                width: 250.0,
                child: DefaultTextStyle(
                    style: const TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                              blurRadius: 7.0,
                              color: Colors.white,
                              offset: Offset(0, 0))
                        ]),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [FlickerAnimatedText('begumz')],
                    )))));
  }
}
