import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:thamizhi_keyboard/src/ui/theme/keyboard_theme.dart';

/// A reusable key widget mimicking native keyboard performance and look.
/// Wrapped in a [RepaintBoundary] to minimize framework rebuilds during ripples/animations.
class KeyWidget extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final int flex;
  final VoidCallback onTap;
  final VoidCallback? onLongPress;
  final bool isAltKey;
  final double fontSize;

  const KeyWidget({
    super.key,
    this.text,
    this.icon,
    this.flex = 1,
    required this.onTap,
    this.onLongPress,
    this.isAltKey = false,
    this.fontSize = 20.0,
  })  : assert(text != null || icon != null,
            'A KeyWidget must have either text or an icon');

  @override
  Widget build(BuildContext context) {
    final theme = KeyboardThemeData.of(context);
    final bgColor = isAltKey ? theme.altKeyColor : theme.keyColor;

    return Expanded(
      flex: flex,
      child: RepaintBoundary(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 5.0),
          child: Material(
            color: bgColor,
            borderRadius: BorderRadius.circular(6.0),
            elevation: 1.0,
            shadowColor: theme.shadowColor,
            child: InkWell(
              borderRadius: BorderRadius.circular(6.0),
              // Native keyboards usually have subtle touch feedback
              splashColor:
                  theme.textColor.withAlpha(25), // equivalent to opaciy 0.1
              highlightColor:
                  theme.textColor.withAlpha(12), // equivalent to opacity 0.05
              onTap: () {
                HapticFeedback.lightImpact(); // Native haptic feedback
                onTap();
              },
              onLongPress: onLongPress != null
                  ? () {
                      HapticFeedback.heavyImpact();
                      onLongPress!();
                    }
                  : null,
              child: Container(
                alignment: Alignment.center,
                child: icon != null
                    ? Icon(icon, color: theme.textColor, size: 24.0)
                    : Text(
                        text!,
                        style: TextStyle(
                          color: theme.textColor,
                          fontSize: fontSize,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
