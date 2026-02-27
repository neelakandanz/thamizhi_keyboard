import 'package:flutter/material.dart';
import 'package:thamizhi_keyboard/src/state/keyboard_controller.dart';
import 'package:thamizhi_keyboard/src/state/keyboard_state.dart';
import 'package:thamizhi_keyboard/src/ui/layouts/english_layout.dart';
import 'package:thamizhi_keyboard/src/ui/layouts/number_layout.dart';
import 'package:thamizhi_keyboard/src/ui/layouts/tamil_layout.dart';
import 'package:thamizhi_keyboard/src/ui/theme/keyboard_theme.dart';

/// The main keyboard wrapper that manages responsive constraints and the active layout.
class ThamizhiKeyboard extends StatefulWidget {
  final TextEditingController controller;
  final KeyboardTheme? theme;

  const ThamizhiKeyboard({
    super.key,
    required this.controller,
    this.theme,
  });

  @override
  State<ThamizhiKeyboard> createState() => _ThamizhiKeyboardState();
}

class _ThamizhiKeyboardState extends State<ThamizhiKeyboard> {
  late KeyboardController _keyboardController;

  @override
  void initState() {
    super.initState();
    _keyboardController = KeyboardController(textController: widget.controller);
  }

  @override
  void dispose() {
    _keyboardController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Determine theme dynamically if not provided
    final theme = widget.theme ??
        (Theme.of(context).brightness == Brightness.dark
            ? KeyboardTheme.dark
            : KeyboardTheme.light);

    return KeyboardThemeData(
      theme: theme,
      child: LayoutBuilder(
        builder: (context, constraints) {
          // Adjust layout width for larger screens (tablets, web, desktop)
          double keyboardWidth = constraints.maxWidth;
          if (keyboardWidth > 600) {
            keyboardWidth =
                600; // Constrain maximum width to mimic native keyboard bounds
          }

          return Container(
            width: constraints.maxWidth,
            color: theme.backgroundColor,
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: keyboardWidth,
              child: SafeArea(
                bottom: true,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0, top: 4.0),
                  child: ValueListenableBuilder<KeyboardState>(
                    valueListenable: _keyboardController,
                    builder: (context, state, child) {
                      return IntrinsicHeight(
                        child: _buildActiveLayout(state.currentLayout),
                      );
                    },
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildActiveLayout(KeyboardLayout layout) {
    switch (layout) {
      case KeyboardLayout.tamil:
        return TamilLayout(controller: _keyboardController);
      case KeyboardLayout.english:
      case KeyboardLayout.englishCaps:
        return EnglishLayout(controller: _keyboardController);
      case KeyboardLayout.numbers:
      case KeyboardLayout.symbols:
        return NumberLayout(controller: _keyboardController);
    }
  }
}
