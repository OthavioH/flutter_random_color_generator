import 'package:flutter/material.dart';
import 'package:flutter_random_color_generator/main.dart';
import 'package:flutter_random_color_generator/presentation/home_color_controller.dart.dart';
import 'package:flutter_random_color_generator/presentation/home_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HomeScreen ', () {
    testWidgets('HomeScreen loads successfully with the Hello There label', (
      tester,
    ) async {
      await tester.pumpWidget(
        const MainApp(),
      );

      expect(find.bySemanticsIdentifier('helloThereLabel'), findsOneWidget);
    });

    testWidgets('HomeColorController color changes when user taps the screen', (
      tester,
    ) async {
      final homeController = HomeColorController();

      await tester.pumpWidget(
        MaterialApp(
          home: HomeScreen(colorController: homeController),
        ),
      );

      final lastColor = homeController.colorNotifier.value;

      await tester.tap(find.byType(HomeScreen));

      expect(lastColor != homeController.colorNotifier.value, isTrue);
    });
  });
}
