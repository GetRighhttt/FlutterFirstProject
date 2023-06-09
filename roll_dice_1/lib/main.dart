import 'package:flutter/material.dart';
import 'package:roll_dice_1/container_builder.dart';

/// const makes the widget reusable
/// Scaffold makes the screen appear the way it would as if the emulator were
/// a real phone. It shows up black if Scaffold is not present.
/// Center aligns the widgets to be at the center of the screen.

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'First Flutter App',
          ),
        ),
        body: const ContainerBuilder(
          colors: [
            Color.fromARGB(255, 154, 218, 248),
            Color.fromARGB(255, 87, 169, 236),
            Colors.blueGrey
          ],
        ),
      ),
    ),
  );
}
