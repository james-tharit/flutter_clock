import 'dart:math';

import 'package:flutter/material.dart';

class HourPointer extends StatelessWidget {
  final double radius;
  const HourPointer({Key? key, required this.radius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(const Duration(seconds: 1)),
        builder: (context, snapshot) {
          final hour = DateTime.now().hour.toDouble();
          final angleSecond = (pi * (hour / 60)) * 2;
          return RotatedBox(
            quarterTurns: 2,
            child: Transform.rotate(
              angle: angleSecond,
              child: Transform.translate(
                offset: Offset(0, radius / 2),
                child: Center(
                  child: Container(
                    height: radius,
                    width: 8,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
