import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/quiz.dart';

void main() {
  testWidgets('Prejde celý kvíz a zobrazí výsledky', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const Quiz());

    await tester.tap(find.text('Start Quiz'));
    await tester.pump();

    for (final question in questions) {
      expect(find.text(question.text), findsOneWidget);
      await tester.tap(find.text(question.answers[0]));
      await tester.pump();
    }

    final total = questions.length;
    expect(
      find.text('Správne si odpovedal na $total z $total otázok!'),
      findsOneWidget,
    );

    await tester.tap(find.byIcon(Icons.refresh));
    await tester.pump();
    expect(find.text(questions[0].text), findsOneWidget);
  });
}
