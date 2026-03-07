enum KeyboardLayout {
  tamil,
  english,
  englishCaps,
  numbers,
  tamilNumbers,
  symbols,
}

/// Immutable state holding the current keyboard configuration.
class KeyboardState {
  final KeyboardLayout currentLayout;

  // Potential future extensions
  final bool isVibrationEnabled;
  final bool isSoundEnabled;

  const KeyboardState({
    this.currentLayout = KeyboardLayout.tamil,
    this.isVibrationEnabled = true,
    this.isSoundEnabled = true,
  });

  KeyboardState copyWith({
    KeyboardLayout? currentLayout,
    bool? isVibrationEnabled,
    bool? isSoundEnabled,
  }) {
    return KeyboardState(
      currentLayout: currentLayout ?? this.currentLayout,
      isVibrationEnabled: isVibrationEnabled ?? this.isVibrationEnabled,
      isSoundEnabled: isSoundEnabled ?? this.isSoundEnabled,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is KeyboardState &&
        other.currentLayout == currentLayout &&
        other.isVibrationEnabled == isVibrationEnabled &&
        other.isSoundEnabled == isSoundEnabled;
  }

  @override
  int get hashCode =>
      Object.hash(currentLayout, isVibrationEnabled, isSoundEnabled);
}
