import 'package:flutter/material.dart';
import 'package:animations/page_route_builder.dart';
import 'package:animations/physics_card_drag_demo.dart';
import 'package:animations/animated_container.dart';
import 'package:animations/fade_widget.dart';
import 'package:animations/drawer.dart';
import 'snack_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SnackbarApp(),
    );
  }
}
