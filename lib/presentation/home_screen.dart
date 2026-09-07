import 'package:flutter/material.dart';
import 'package:flutter_random_color_generator/presentation/home_color_controller.dart.dart';

/// The Home screen of the app.
/// It shows a centered "Hello there" message with
/// a background color that it is randomly generated each time the user taps
/// into any part of the screen and when the screen is initialized.
class HomeScreen extends StatelessWidget {
  final HomeColorController _colorController;

  /// Creates the instance of a [HomeScreen] widget.
  ///
  /// It requires a [HomeColorController] to control the state of
  /// the screen's background color.
  const new({
    required this._colorController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _colorController.changeColor,
      child: ListenableBuilder(
        listenable: _colorController.colorNotifier,
        builder: (context, child) {
          final color = _colorController.colorNotifier.value;
          final colorBrigthness = color.computeLuminance();
          final isColorLight = colorBrigthness > 0.5;
          return Scaffold(
            backgroundColor: color,
            body: Center(
              child: Text(
                "Hello there",
                style: TextStyle(
                  color: isColorLight ? Colors.black : Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
