import 'package:flutter/material.dart';
import 'package:thamizhi_keyboard/src/state/keyboard_controller.dart';
import 'package:thamizhi_keyboard/src/state/keyboard_state.dart';
import 'package:thamizhi_keyboard/src/ui/components/key_widget.dart';

/// A layout for Tamil numbers.
class TamilNumberLayout extends StatelessWidget {
  final KeyboardController controller;

  const TamilNumberLayout({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildRow(['௧', '௨', '௩', '௪', '௫', '௬', '௭', '௮', '௯', '௦']),
        _buildRow(['-', '/', ':', ';', '(', ')', '\$', '&', '@', '"']),
        _buildActionRow(['.', ',', '?', '!', '\'']),
        _buildNavRow(),
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
          ...literals.map((k) {
            return KeyWidget(
              text: k,
              onTap: () => controller.onKeyPress(k),
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
