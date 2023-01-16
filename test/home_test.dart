import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_clock/main.dart';

void main() {
  testWidgets('renders greeting message', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our greeting message rendered.
    expect(find.text('Hello WOODY!'), findsOneWidget);
  });
}
