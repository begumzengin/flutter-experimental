import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TyperText extends StatelessWidget {
  const TyperText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('typer',
              style: GoogleFonts.nunito(color: Color(0xFFE8D4CC))),
          backgroundColor: Color(0xFFD55C5A)),
      body: const TyperTextPage(),
    );
  }
}

class TyperTextPage extends StatelessWidget {
  const TyperTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SizedBox(
                width: 420.0,
                child: DefaultTextStyle(
                  style: GoogleFonts.lobster(
                    color: Color(0xFF001B48),
                    fontSize: 25.0,
                  ),
                  child: AnimatedTextKit(animatedTexts: [
                    TyperAnimatedText(
                        '"life\'s but a walking shadow, a poor player,\nthat struts and frets his hour upon the stage\nand then is heard no more. it is a tale\ntold by an idiot, full of sound and fury,\nsignifying nothing."\n-william shakespeare, macbeth',
                        speed: const Duration(milliseconds: 100)),
                  ]),
                ))));
  }
}
