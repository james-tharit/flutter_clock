import 'dart:math';

import 'package:flutter/material.dart';

class MinutePointer extends StatelessWidget {
  final double radius;
  const MinutePointer({Key? key, required this.radius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(const Duration(seconds: 1)),
        builder: (context, snapshot) {
          final min = DateTime.now().minute.toDouble();
          final angleSecond = (pi * (min / 60)) * 2;
          return RotatedBox(
            quarterTurns: 2,
            child: Transform.rotate(
              angle: angleSecond,
              child: Transform.translate(
                offset: Offset(0, radius / 2),
                child: Center(
                  child: Container(
                    height: radius,
                    width: 4,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
