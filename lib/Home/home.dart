import 'package:flutter/material.dart';
import 'package:flutter_clock/Clock/dial.dart';
import 'package:flutter_clock/Component/layout.dart';
import 'package:flutter_clock/color_const.dart' as color_const;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: LayoutBuilder(
        builder: (context, constraints) {
          Offset centerOffset =
              Offset(constraints.maxWidth / 2, constraints.maxHeight / 2);
          double dialRadius = constraints.maxWidth / 3;
          return CustomPaint(
            painter: DialPainter(
                dialColor: color_const.secondaryVariant,
                offset: centerOffset,
                radius: dialRadius),
          );
        },
      ),
    );
  }
}
