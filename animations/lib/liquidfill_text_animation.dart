import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LiquidFill extends StatelessWidget {
  const LiquidFill({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('liquid fill',
              style: GoogleFonts.nunito(color: Color(0xFFE8D4CC))),
          backgroundColor: Color(0xFFD55C5A)),
      body: const LiquidFillPage(),
    );
  }
}

class LiquidFillPage extends StatelessWidget {
  const LiquidFillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SizedBox(
                width: 250.0,
                child: TextLiquidFill(
                  text: 'ASKIM',
                  waveColor: Color(0xFF63BCC9),
                  boxBackgroundColor: Color(0xFFCDB3D4),
                  textStyle: TextStyle(
                    fontSize: 80.0,
                    fontWeight: FontWeight.bold,
                  ),
                  boxHeight: 300.0,
                ))));
  }
}
