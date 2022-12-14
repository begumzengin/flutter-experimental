import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScaleText extends StatelessWidget {
  const ScaleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('scale',
              style: GoogleFonts.nunito(color: Color(0xFFE8D4CC))),
          backgroundColor: Color(0xFFD55C5A)),
      body: const ScaleTextPage(),
    );
  }
}

class ScaleTextPage extends StatelessWidget {
  const ScaleTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SizedBox(
                width: 300.0,
                child: DefaultTextStyle(
                    style: GoogleFonts.rubikMonoOne(fontSize: 70.0),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        ScaleAnimatedText('think'),
                        ScaleAnimatedText('build'),
                        ScaleAnimatedText('ship'),
                      ],
                      totalRepeatCount: 10,
                    )))));
  }
}
