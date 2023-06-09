import 'package:flutter/material.dart';

/// classes are how we create widgets in flutter and in OOP classes are
/// basically templates/blueprints for containing and constructing objects
/// objects are all about organizing data and separating data according to
/// your code
/// This is how we use or create custom widgets in Flutter
class ContainerBuilder extends StatelessWidget {
  // constructor(necessary for flutter)
  const ContainerBuilder({super.key});

  // necessary - this method returns a Widget and annotation override that
  // is expected by stateless widget class
  // build must be called and must always have a context as a parameter
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue.shade100,
            Colors.blue.shade200,
            Colors.blue.shade300
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const Center(
        child: Text(
          'Hey Bro! How are things going?',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
