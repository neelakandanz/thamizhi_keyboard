import 'package:flutter_test/flutter_test.dart';
import 'package:thamizhi_keyboard/src/engine/tamil_engine.dart';

void main() {
  group('TamilEngine Tests', () {
    test('Basic append without composition', () {
      expect(TamilEngine.processInput('க', 'ப'), 'கப');
    });

    test('Composition: Consonant + vowel (அ)', () {
      expect(TamilEngine.processInput('க்', 'அ'), 'க');
    });

    test('Composition: Consonant + vowel (ஆ)', () {
      expect(TamilEngine.processInput('க்', 'ஆ'), 'கா');
    });

    test('Composition: Consonant + vowel (இ)', () {
      expect(TamilEngine.processInput('க்', 'இ'), 'கி');
    });

    test('Composition: Consonant + vowel (ஓ)', () {
      expect(TamilEngine.processInput('ச்', 'ஓ'), 'சோ');
    });

    test('Composition check inside longer string', () {
      expect(TamilEngine.processInput('வணக்கம்', 'அ'), 'வணக்கம');
    });

    test('Backspace test', () {
      expect(TamilEngine.processBackspace('தமிழ்'), 'தமிழ');
      expect(TamilEngine.processBackspace('க'), '');
      expect(TamilEngine.processBackspace(''), '');
    });
  });
}
