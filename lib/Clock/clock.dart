import 'package:flutter/material.dart';
import 'package:flutter_clock/Clock/hour_pointer.dart';
import 'package:flutter_clock/Clock/minute_pointer.dart';
import 'package:flutter_clock/Clock/second_pointer.dart';
import 'package:flutter_clock/color_const.dart' as color_const;
import 'dial.dart';

class Clock extends StatelessWidget {
  const Clock({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        Offset centerGlobalOffset =
            Offset(constraints.maxWidth / 2, constraints.maxHeight / 2);
        double dialRadius = constraints.maxWidth / 3;
        return Stack(
          children: [
            CustomPaint(
              painter: DialPainter(
                  dialColor: color_const.secondaryVariant,
                  offset: centerGlobalOffset,
                  radius: dialRadius),
            ),
            SecondPointer(
              radius: dialRadius - 12,
            ),
            MinutePointer(radius: dialRadius - 32),
            HourPointer(radius: dialRadius - 64)
          ],
        );
      },
    );
  }
}
