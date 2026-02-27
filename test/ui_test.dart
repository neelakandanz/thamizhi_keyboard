import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:thamizhi_keyboard/src/ui/keyboard_layout.dart';

void main() {
  testWidgets('ThamizhiKeyboard renders without errors across screen sizes',
      (WidgetTester tester) async {
    final controller = TextEditingController();

    // Test mobile portrait constraint
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: ThamizhiKeyboard(controller: controller),
            ),
          ),
        ),
      ),
    );
    expect(find.byType(ThamizhiKeyboard), findsOneWidget);

    // Test tablet/desktop constraint (should constrain inner width to 600)
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1200),
              child: ThamizhiKeyboard(controller: controller),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(ThamizhiKeyboard), findsOneWidget);
  });
}
