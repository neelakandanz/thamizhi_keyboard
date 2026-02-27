import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:thamizhi_keyboard/src/state/keyboard_controller.dart';
import 'package:thamizhi_keyboard/src/state/keyboard_state.dart';

void main() {
  group('KeyboardController Tests', () {
    late TextEditingController textController;
    late KeyboardController keyboardController;

    setUp(() {
      textController = TextEditingController();
      keyboardController = KeyboardController(textController: textController);
    });

    test('Initial layout is Tamil', () {
      expect(keyboardController.value.currentLayout, KeyboardLayout.tamil);
    });

    test('Switching layout to English', () {
      keyboardController.switchLayout(KeyboardLayout.english);
      expect(keyboardController.value.currentLayout, KeyboardLayout.english);
    });

    test('Toggling shift in English mode', () {
      keyboardController.switchLayout(KeyboardLayout.english);
      keyboardController.toggleShift();
      expect(
          keyboardController.value.currentLayout, KeyboardLayout.englishCaps);

      keyboardController.toggleShift();
      expect(keyboardController.value.currentLayout, KeyboardLayout.english);
    });

    test('Typing keys with Tamil layout uses TamilEngine composition', () {
      keyboardController.onKeyPress('க்');
      keyboardController.onKeyPress('ஆ');
      expect(textController.text, 'கா');
    });

    test('Typing keys in non-Tamil layout just appends', () {
      keyboardController.switchLayout(KeyboardLayout.english);
      keyboardController.onKeyPress('H');
      keyboardController.onKeyPress('i');
      expect(textController.text, 'Hi');
    });

    test('Backspace action', () {
      keyboardController.onKeyPress('க');
      keyboardController.onKeyPress(
          'ா'); // wait, 'க்' + 'ஆ' was composition. 'க' and 'ா' are just appended if we don't have consonant composition?
      // actually let's just prefill the controller.
      textController.text = 'hello';
      keyboardController.onBackspace();
      expect(textController.text, 'hell');

      textController.text = 'கா';
      keyboardController.onBackspace();
      expect(textController.text, 'க');
    });
  });
}
