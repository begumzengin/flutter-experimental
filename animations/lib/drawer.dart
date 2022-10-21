import 'package:animations/animated_container.dart';
import 'package:animations/fade_widget.dart';
import 'package:animations/page_route_builder.dart';
import 'package:animations/physics_card_drag_demo.dart';
import 'package:animations/snack_bar.dart';
import 'package:flutter/material.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({super.key});

  //final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('drawer app')),
        body: const Center(
          child: Text(
              'this is a demo app where i practice \nsome flutter animations and designs'),
        ),
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('drawer header'),
            ),
            ListTile(
              title: const Text('animated container'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AnimatedContainerApp()));
              },
            ),
            ListTile(
              title: const Text('fade widget'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FadeWidgetApp()));
              },
            ),
            ListTile(
              title: const Text('card dragger'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PhysicsCardDragDemo()));
              },
            ),
            ListTile(
              title: const Text('page route builder'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page1()));
              },
            ),
            ListTile(
              title: const Text('snackbar'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SnackbarApp()));
              },
            ),
          ],
        )));
  }
}
