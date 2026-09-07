import 'package:flutter/material.dart';
import 'package:flutter_random_color_generator/presentation/home_color_controller.dart.dart';
import 'package:flutter_random_color_generator/presentation/home_screen.dart';

void main() {
  runApp(const MainApp());
}

/// Main app widget, which starts our project with a [MaterialApp]
/// by passing home screen and title configurations to it.
class MainApp extends StatelessWidget {
  /// Creates the instance of [MainApp]
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Color Generator',
      home: HomeScreen(
        // "Simulating" dependency injection since I didn't want to use
        // a DI package in this project to keep it simple.
        colorController: HomeColorController(),
      ),
    );
  }
}
