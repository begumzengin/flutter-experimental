import 'package:flutter/material.dart';
import 'package:animations/page_route_builder.dart';
import 'package:animations/physics_card_drag_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PhysicsCardDragDemo(),
    );
  }
}
