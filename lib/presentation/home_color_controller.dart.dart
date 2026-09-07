import 'dart:math';

import 'package:flutter/material.dart';

/// A controller class which manages the state of a single Color.
/// Calling the [changeColor] function will generate a random color and change
/// the color state and send the updated info to all the [colorNotifier]
/// listeners.
class HomeColorController {

  /// Carries the value of a Color and, when its value changes,
  /// sends that info to all of its listeners, resulting in an update into
  /// all the widgets that are listening to it.
  late final ValueNotifier<Color> colorNotifier;

  /// Creates the instance of the [HomeColorController] class.
  /// 
  /// Calling this will generate a color and assign its value to
  /// [colorNotifier]'s default value, which is listenable so when its value
  /// changes, the listeners will get the updated value.
  HomeColorController() {
    colorNotifier = ValueNotifier(_generateRandomColor());
  }

  

  /// Assigns a new random [Color] value to the `color` state variable
  /// and notify all the widgets that are listening to this state.
  void changeColor() {
    colorNotifier.value = _generateRandomColor();
  }

  /// Generates a new random [Color] object by creating 4 random numbers
  /// which relates to alpha, red, green and blue channels of a RBG color.
  /// By using the combination of these random numbers into the color channels,
  /// this method is able to generate 16777216 different colors.
  /// 
  /// Each random channel value is >=0 and < 256.
  Color _generateRandomColor() {
    final random = Random();

    final red = random.nextInt(256);
    final green = random.nextInt(256);
    final blue = random.nextInt(256);

    return Color.fromARGB(255, red, green, blue);
  }
}
