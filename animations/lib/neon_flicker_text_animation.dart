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
        backgroundColor: Color(0xFF5B4183),
        body: Center(
            child: SizedBox(
                width: 250.0,
                child: DefaultTextStyle(
                    style: GoogleFonts.unicaOne(
                        fontSize: 35,
                        color: Color(0xFFAFE5D0),
                        shadows: [
                          Shadow(
                              blurRadius: 10.0,
                              color: Color(0xFFAFE5D0),
                              offset: Offset(0, 0))
                        ]),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [FlickerAnimatedText('begumz')],
                    )))));
  }
}
