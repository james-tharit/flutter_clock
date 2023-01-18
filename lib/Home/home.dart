import 'package:flutter/material.dart';
import 'package:flutter_clock/Clock/clock.dart';
import 'package:flutter_clock/Component/layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(child: Clock());
  }
}
