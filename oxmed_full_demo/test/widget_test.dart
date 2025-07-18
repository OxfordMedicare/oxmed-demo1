import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:oxmed_full_demo/main.dart';

void main() {
  testWidgets('App loads and shows Patient screen initially', (WidgetTester tester) async {
    await tester.pumpWidget(OxMedApp());

    expect(find.text('Patient Screen UI Goes Here'), findsOneWidget);
    expect(find.text('Paramedic Screen UI Goes Here'), findsNothing);
  });
}

