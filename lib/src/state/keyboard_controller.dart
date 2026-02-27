import 'package:flutter/material.dart';
import 'package:thamizhi_keyboard/src/engine/tamil_engine.dart';
import 'package:thamizhi_keyboard/src/state/keyboard_state.dart';

/// Controller for managing keyboard state and actions.
class KeyboardController extends ValueNotifier<KeyboardState> {
  final TextEditingController textController;

  KeyboardController({
    required this.textController,
    KeyboardState initialState = const KeyboardState(),
  }) : super(initialState);

  /// Changes the current layout of the keyboard.
  void switchLayout(KeyboardLayout layout) {
    value = value.copyWith(currentLayout: layout);
  }

  /// Toggles the shift state (between lowercase and uppercase English).
  void toggleShift() {
    if (value.currentLayout == KeyboardLayout.english) {
      switchLayout(KeyboardLayout.englishCaps);
    } else if (value.currentLayout == KeyboardLayout.englishCaps) {
      switchLayout(KeyboardLayout.english);
    }
  }

  /// Appends text using the Tamil engine to handle composition.
  void onKeyPress(String character) {
    // Attempt composition if in Tamil mode, else just append
    if (value.currentLayout == KeyboardLayout.tamil) {
      textController.text =
          TamilEngine.processInput(textController.text, character);
    } else {
      textController.text += character;
    }

    // For English caps, we sometimes revert to lowercase after first char,
    // but a standard keyboard maintains shift lock if tapped twice.
    // This can be enhanced further based on detailed specs.
  }

  /// Processes backspace action.
  void onBackspace() {
    textController.text = TamilEngine.processBackspace(textController.text);
  }
}
