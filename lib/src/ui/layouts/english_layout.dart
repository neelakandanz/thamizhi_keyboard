import 'package:flutter/material.dart';
import 'package:thamizhi_keyboard/src/state/keyboard_controller.dart';
import 'package:thamizhi_keyboard/src/state/keyboard_state.dart';
import 'package:thamizhi_keyboard/src/ui/components/key_widget.dart';

/// A standard QWERTY English layout.
class EnglishLayout extends StatelessWidget {
  final KeyboardController controller;

  const EnglishLayout({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<KeyboardState>(
      valueListenable: controller,
      builder: (context, state, child) {
        final isCaps = state.currentLayout == KeyboardLayout.englishCaps;
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildRow(
                ['q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p'], isCaps),
            _buildRow(['a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l'], isCaps),
            _buildActionRow(
              ['z', 'x', 'c', 'v', 'b', 'n', 'm'],
              isCaps,
            ),
            _buildNavRow(),
          ],
        );
      },
    );
  }

  Widget _buildRow(List<String> literals, bool isCaps) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: literals.map((k) {
          final text = isCaps ? k.toUpperCase() : k;
          return KeyWidget(
            text: text,
            onTap: () => controller.onKeyPress(text),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildActionRow(List<String> literals, bool isCaps) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          KeyWidget(
            icon: isCaps ? Icons.keyboard_capslock : Icons.keyboard_arrow_up,
            isAltKey: true,
            flex: 2,
            onTap: () => controller.toggleShift(),
          ),
          ...literals.map((k) {
            final text = isCaps ? k.toUpperCase() : k;
            return KeyWidget(
              text: text,
              onTap: () => controller.onKeyPress(text),
            );
          }),
          KeyWidget(
            icon: Icons.backspace_outlined,
            isAltKey: true,
            flex: 2,
            onTap: () => controller.onBackspace(),
          ),
        ],
      ),
    );
  }

  Widget _buildNavRow() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          KeyWidget(
            text: 'TA',
            isAltKey: true,
            flex: 2,
            onTap: () => controller.switchLayout(KeyboardLayout.tamil),
          ),
          KeyWidget(
            icon: Icons.space_bar,
            flex: 6,
            onTap: () => controller.onKeyPress(' '),
          ),
          KeyWidget(
            text: '123',
            isAltKey: true,
            flex: 2,
            onTap: () => controller.switchLayout(KeyboardLayout.numbers),
          ),
        ],
      ),
    );
  }
}
