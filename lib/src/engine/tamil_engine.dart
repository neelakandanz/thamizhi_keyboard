/// A pure Dart engine for handling Tamil character composition.
class TamilEngine {
  /// Map of Tamil vowel characters to their corresponding modifying symbols (uyirmei signs).
  static const Map<String, String> _vowelReplacements = {
    "அ": "",
    "ஆ": "ா",
    "இ": "ி",
    "ஈ": "ீ",
    "உ": "ு",
    "ஊ": "ூ",
    "எ": "ெ",
    "ஏ": "ே",
    "ஐ": "ை",
    "ஒ": "ொ",
    "ஓ": "ோ",
    "ஔ": "ௌ",
  };

  /// Processes the input character and appends it to the [currentText].
  /// Handles the combination of pure consonants (ending with '்') and vowels (Uyir Ezhuthukkal).
  static String processInput(String currentText, String newCharacter) {
    if (currentText.isEmpty) {
      return newCharacter;
    }

    // Check if the current text ends with the pulli (pure consonant marker '்')
    // and the new character is a vowel that requires replacement.
    if (currentText.endsWith('்') &&
        _vowelReplacements.containsKey(newCharacter)) {
      final replacement = _vowelReplacements[newCharacter]!;
      // Remove the pulli ('்') and add the uyirmei sign
      return currentText.substring(0, currentText.length - 1) + replacement;
    }

    // Otherwise, simply append the new character
    return currentText + newCharacter;
  }

  /// Processes a backspace operation.
  static String processBackspace(String currentText) {
    if (currentText.isNotEmpty) {
      return currentText.substring(0, currentText.length - 1);
    }
    return currentText;
  }
}
