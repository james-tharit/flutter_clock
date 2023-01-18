import 'dart:math';

import 'package:flutter/material.dart';
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
            const SecondPointer(),
          ],
        );
      },
    );
  }
}

class SecondPointer extends StatelessWidget {
  const SecondPointer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(const Duration(seconds: 1)),
        builder: (context, snapshot) {
          final height = MediaQuery.of(context).size.height;
          final second = DateTime.now().second.toDouble();
          final angleSecond = (pi * (second / 60)) * 2;
          return RotatedBox(
            quarterTurns: 2,
            child: Transform.rotate(
              angle: angleSecond,
              child: Transform.translate(
                offset: Offset(0, height / 15),
                child: Center(
                  child: Container(
                    height: height * 0.14,
                    width: 2,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
