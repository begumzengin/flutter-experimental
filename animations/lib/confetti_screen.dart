import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfettiPage extends StatefulWidget {
  const ConfettiPage({Key? key}) : super(key: key);

  @override
  State<ConfettiPage> createState() => _ConfettiPageState();
}

class _ConfettiPageState extends State<ConfettiPage> {
  final _controller = ConfettiController();
  bool isPlaying = false;

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Scaffold(
            appBar: AppBar(backgroundColor: Color(0xFFD55C5A)),
            body: Center(
              child: MaterialButton(
                onPressed: () {
                  if (isPlaying) {
                    _controller.stop();
                  } else {
                    _controller.play();
                  }
                  isPlaying = !isPlaying;
                },
                child: Text('hehe', style: GoogleFonts.nunito()),
                color: Color(0xFFF5918F),
              ),
            )),
        ConfettiWidget(
          confettiController: _controller,
          blastDirection: pi / 2,
          colors: [
            Color(0xFFFF7B89),
            Color(0xFF8A5082),
            Color(0xFF6F5F90),
            Color(0xFF758EB7),
            Color(0xFFA5CAD2),
          ],
        )
      ],
    );
  }
}
