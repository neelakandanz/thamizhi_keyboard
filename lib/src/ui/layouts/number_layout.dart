import 'package:flutter/material.dart';
import 'package:thamizhi_keyboard/src/state/keyboard_controller.dart';
import 'package:thamizhi_keyboard/src/state/keyboard_state.dart';
import 'package:thamizhi_keyboard/src/ui/components/key_widget.dart';

/// A standard numeric layout.
class NumberLayout extends StatelessWidget {
  final KeyboardController controller;

  const NumberLayout({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildRow(['1', '2', '3', '4', '5', '6', '7', '8', '9', '0']),
        _buildRow(['-', '/', ':', ';', '(', ')', '\$', '&', '@', '"']),
        _buildActionRow(['.', ',', '?', '!', '\'']),
      ],
    );
  }

  Widget _buildRow(List<String> literals) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: literals.map((k) {
          return KeyWidget(
            text: k,
            onTap: () => controller.onKeyPress(k),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildActionRow(List<String> literals) {
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
            text: 'EN',
            isAltKey: true,
            flex: 2,
            onTap: () => controller.switchLayout(KeyboardLayout.english),
          ),
          ...literals.map((k) {
            return KeyWidget(
              text: k,
              onTap: () => controller.onKeyPress(k),
            );
          }),
          KeyWidget(
            icon: Icons.space_bar,
            flex: 3,
            onTap: () => controller.onKeyPress(' '),
          ),
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
}
