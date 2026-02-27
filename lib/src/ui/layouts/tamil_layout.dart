import 'package:flutter/material.dart';
import 'package:thamizhi_keyboard/src/state/keyboard_controller.dart';
import 'package:thamizhi_keyboard/src/state/keyboard_state.dart';
import 'package:thamizhi_keyboard/src/ui/components/key_widget.dart';

/// The responsive Tamil layout mirroring the legacy key arrangement but with modern UI.
class TamilLayout extends StatelessWidget {
  final KeyboardController controller;

  const TamilLayout({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildRow(['அ', 'இ', 'க்', 'ச்', 'ட்', 'த்', 'ப்', 'ற்']),
        _buildRow(['உ', 'எ', 'ய்', 'ர்', 'ல்', 'வ்', 'ழ்', 'ள்']),
        _buildRow(['ஐ', 'ஓ', 'ங்', 'ஞ்', 'ண்', 'ந்', 'ம்', 'ன்']),
        _buildBottomRow(),
      ],
    );
  }

  Widget _buildRow(List<String> keys) {
    return Expanded(
      child: Row(
        children: keys
            .map((k) => KeyWidget(
                  text: k,
                  onTap: () => controller.onKeyPress(k),
                ))
            .toList(),
      ),
    );
  }

  Widget _buildBottomRow() {
    return Expanded(
      child: Row(
        children: [
          KeyWidget(
            text: 'EN',
            isAltKey: true,
            onTap: () => controller.switchLayout(KeyboardLayout.english),
          ),
          KeyWidget(text: 'ஆ', onTap: () => controller.onKeyPress('ஆ')),
          KeyWidget(text: 'ஈ', onTap: () => controller.onKeyPress('ஈ')),
          KeyWidget(text: 'ஊ', onTap: () => controller.onKeyPress('ஊ')),
          KeyWidget(text: 'ஏ', onTap: () => controller.onKeyPress('ஏ')),
          KeyWidget(text: 'ஔ', onTap: () => controller.onKeyPress('ஔ')),
          KeyWidget(text: 'ஃ', onTap: () => controller.onKeyPress('ஃ')),
          KeyWidget(
            text: '123',
            isAltKey: true,
            onTap: () => controller.switchLayout(KeyboardLayout.numbers),
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
