import 'package:flutter/material.dart';
import 'package:roll_dice_1/container_builder.dart';

/// const makes the widget reusable
/// Scaffold makes the screen appear the way it would as if the emulator were
/// a real phone. It shows up black if Scaffold is not present.
/// Center aligns the widgets to be at the center of the screen.

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: ContainerBuilder(
          colors: [
            Colors.lightBlue,
            Color.fromARGB(255, 55, 132, 196),
            Colors.blueGrey
          ],
        ),
      ),
    ),
  );
}
