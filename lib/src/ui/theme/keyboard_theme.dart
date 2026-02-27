import 'package:flutter/material.dart';

/// Defines the theme data for the keyboard.
class KeyboardTheme {
  final Color backgroundColor;
  final Color keyColor;
  final Color altKeyColor;
  final Color textColor;
  final Color shadowColor;
  final Brightness brightness;

  const KeyboardTheme({
    required this.backgroundColor,
    required this.keyColor,
    required this.altKeyColor,
    required this.textColor,
    required this.shadowColor,
    required this.brightness,
  });

  /// A modern light theme resembling iOS/Gboard light mode.
  static const KeyboardTheme light = KeyboardTheme(
    backgroundColor: Color(0xFFD1D5DB), // Light grey background
    keyColor: Color(0xFFFFFFFF), // White keys
    altKeyColor: Color(0xFFB4BBC9), // Special keys (shift, backspace)
    textColor: Color(0xFF000000), // Black text
    shadowColor: Color(0x40000000),
    brightness: Brightness.light,
  );

  /// A modern dark theme resembling iOS/Gboard dark mode.
  static const KeyboardTheme dark = KeyboardTheme(
    backgroundColor: Color(0xFF2B2B2B), // Dark background
    keyColor: Color(0xFF4A4A4A), // Dark grey keys
    altKeyColor: Color(0xFF383838), // Special keys
    textColor: Color(0xFFFFFFFF), // White text
    shadowColor: Color(0x60000000),
    brightness: Brightness.dark,
  );
}

/// An InheritedWidget to provide the current [KeyboardTheme] to descendants.
class KeyboardThemeData extends InheritedWidget {
  final KeyboardTheme theme;

  const KeyboardThemeData({
    super.key,
    required this.theme,
    required super.child,
  });

  static KeyboardTheme of(BuildContext context) {
    final KeyboardThemeData? result =
        context.dependOnInheritedWidgetOfExactType<KeyboardThemeData>();
    return result?.theme ??
        (Theme.of(context).brightness == Brightness.dark
            ? KeyboardTheme.dark
            : KeyboardTheme.light);
  }

  @override
  bool updateShouldNotify(KeyboardThemeData oldWidget) =>
      theme != oldWidget.theme;
}
