import 'package:flutter/material.dart';
import 'package:roll_dice_1/styled_text.dart';

// constants (compile time contant that is locked in at the moment the code
// is compiled)
// 'final' could also be used however this is not recommended by flutter
// used by dart for ahead of time compilation vs just in time compilation

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

/// classes are how we create widgets in flutter and in OOP classes are
/// basically templates/blueprints for containing and constructing objects
/// objects are all about organizing data and separating data according to
/// your code
/// This is how we use or create custom widgets in Flutter
class ContainerBuilder extends StatelessWidget {
  // constructor(necessary for flutter)
  // have to add required in front of the parameter because the named argument
  // is optional by default and required makes it not optional
  const ContainerBuilder({super.key, required this.colors});

  final List<Color> colors;

  // necessary - this method returns a Widget and annotation override that
  // is expected by stateless widget class
  // build must be called and must always have a context as a parameter
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const StyledText("What's up Guys!"),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Press This Button',
                style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
