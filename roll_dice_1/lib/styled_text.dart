import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  ///constructor that takes in a parameter using this keyword
  ///this is typically how we would use this type of syntax for flutter
  /// this would be an example with a positional argument whereas if we
  /// passed in the parameter after the super.key separated by a comma
  /// it would be a named parameter instead
  const StyledText(this.outputText, {super.key});

  // delcared as final because it is better for compilation and the component
  // wont change. this is an example of how to use instance variables in Flutter
  // doing this allows us to build highly reusable widgets in Flutter
  final String outputText;

  @override
  Widget build(context) {
    return Text(
      outputText, // passing in our constructor parameter here
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 24,
          fontStyle: FontStyle.italic),
    );
  }
}
