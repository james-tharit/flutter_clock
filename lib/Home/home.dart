import 'package:flutter/material.dart';
import 'package:flutter_clock/Component/layout.dart';
import 'package:flutter_clock/Component/theme_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(
      child: ThemeText(text: 'Hello WOODY!'),
    );
  }
}
