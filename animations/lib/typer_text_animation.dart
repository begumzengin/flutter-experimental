import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TyperText extends StatelessWidget {
  const TyperText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('fade text',
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
                width: 250.0,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Bobbers',
                  ),
                  child: AnimatedTextKit(animatedTexts: [
                    TyperAnimatedText(
                        '"life\'s but a walking shadow, a poor player,'),
                    TyperAnimatedText(
                        'that struts and frets his hour upon the stage'),
                    TyperAnimatedText(
                        'and then is heard no more. it is a tale'),
                    TyperAnimatedText(
                        'told by an idiot, full of sound and fury,'),
                    TyperAnimatedText('signifying nothing."'),
                    TyperAnimatedText('-william shakespeare, macbeth')
                  ]),
                ))));
  }
}
