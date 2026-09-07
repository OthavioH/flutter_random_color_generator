import 'package:flutter_random_color_generator/presentation/home_color_controller.dart.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HomeColorController constructor tests', () {
    test(
      'a random color is assigned when HomeColorController is created',
      () {
        final homeColorController = HomeColorController();
        expect(homeColorController.colorNotifier.value, isNotNull);
      },
    );
  });

  group('colorChange tests', () {
    test(
      'a NEW random color is assigned when colorChange is called',
      () {
        final homeColorController = HomeColorController();
        final originalColor = homeColorController.colorNotifier.value;
        
        homeColorController.changeColor();
        final newColor = homeColorController.colorNotifier.value;

        expect(newColor != originalColor, isTrue);
      },
    );
  });
  
}
