import 'package:animations/animated_container.dart';
import 'package:animations/confetti_screen.dart';
import 'package:animations/fade_widget.dart';
import 'package:animations/page_route_builder.dart';
import 'package:animations/physics_card_drag_demo.dart';
import 'package:animations/snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animations/download_page.dart';
import 'package:animations/rotate_text_animation.dart';
import 'package:animations/fade_text_animation.dart';
import 'package:animations/typer_text_animation.dart';
import 'package:animations/typewriter_text_animation.dart';
import 'package:animations/scale_text_animation.dart';
import 'package:animations/colorize_text_animation.dart';
import 'package:animations/liquidfill_text_animation.dart';
import 'package:animations/neon_flicker_text_animation.dart';
import 'package:animations/wavy_text_animation.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({super.key});

  //final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('my animations app',
              style: GoogleFonts.nunito(color: Color(0xFFE8D4CC))),
          backgroundColor: Color(0xFFD55C5A),
        ),
        body: Center(
          child: Text(
              'this is a demo app where i practice \nsome flutter animations and designs',
              style:
                  GoogleFonts.nunito(fontSize: 20, color: Color(0xFF514945))),
        ),
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFD55C5A),
              ),
              child: Text('drawer header',
                  style: GoogleFonts.nunito(
                      color: Color(0xFFE8D4CC),
                      fontSize: 22,
                      letterSpacing: .5)),
            ),
            ListTile(
              title: Text('animated container',
                  style: GoogleFonts.nunito(
                      fontSize: 17, color: Color(0xFF894242))),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AnimatedContainerApp()));
              },
            ),
            ListTile(
              title: Text('fade widget',
                  style: GoogleFonts.nunito(
                      fontSize: 17, color: Color(0xFF894242))),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FadeWidgetApp()));
              },
            ),
            ListTile(
              title: Text('card dragger',
                  style: GoogleFonts.nunito(
                      fontSize: 17, color: Color(0xFF894242))),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PhysicsCardDragDemo()));
              },
            ),
            ListTile(
              title: Text('page route builder',
                  style: GoogleFonts.nunito(
                      fontSize: 17, color: Color(0xFF894242))),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page1()));
              },
            ),
            ListTile(
              title: Text('snackbar',
                  style: GoogleFonts.nunito(
                      fontSize: 17, color: Color(0xFF894242))),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SnackbarApp()));
              },
            ),
            ListTile(
              title: Text('confetti',
                  style: GoogleFonts.nunito(
                      fontSize: 17, color: Color(0xFF894242))),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ConfettiPage()));
              },
            ),
            ListTile(
              title: Text('download button',
                  style: GoogleFonts.nunito(
                      fontSize: 17, color: Color(0xFF894242))),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ExampleCupertinoDownloadButton()));
              },
            ),
            ListTile(
              title: Text('rotate text',
                  style: GoogleFonts.nunito(
                      fontSize: 17, color: Color(0xFF894242))),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RotateText()));
              },
            ),
            ListTile(
              title: Text('fade text',
                  style: GoogleFonts.nunito(
                      fontSize: 17, color: Color(0xFF894242))),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FadeText()));
              },
            ),
            ListTile(
              title: Text('typer',
                  style: GoogleFonts.nunito(
                      fontSize: 17, color: Color(0xFF894242))),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TyperText()));
              },
            ),
            ListTile(
              title: Text('typewriter',
                  style: GoogleFonts.nunito(
                      fontSize: 17, color: Color(0xFF894242))),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Typewriter()));
              },
            ),
            ListTile(
              title: Text('scale',
                  style: GoogleFonts.nunito(
                      fontSize: 17, color: Color(0xFF894242))),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScaleText()));
              },
            ),
            ListTile(
              title: Text('colorize',
                  style: GoogleFonts.nunito(
                      fontSize: 17, color: Color(0xFF894242))),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ColorizeText()));
              },
            ),
            ListTile(
              title: Text('liquid fill',
                  style: GoogleFonts.nunito(
                      fontSize: 17, color: Color(0xFF894242))),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LiquidFill()));
              },
            ),
            ListTile(
              title: Text('neon flicker',
                  style: GoogleFonts.nunito(
                      fontSize: 17, color: Color(0xFF894242))),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NeonFlicker()));
              },
            ),
            ListTile(
              title: Text('wavy text',
                  style: GoogleFonts.nunito(
                      fontSize: 17, color: Color(0xFF894242))),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WavyText()));
              },
            ),
          ],
        )));
  }
}
