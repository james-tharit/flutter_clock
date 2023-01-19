import 'dart:math';

import 'package:flutter/material.dart';

class SecondPointer extends StatelessWidget {
  final double radius;
  const SecondPointer({Key? key, required this.radius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(const Duration(seconds: 1)),
        builder: (context, snapshot) {
          final second = DateTime.now().second.toDouble();
          final angleSecond = (pi * (second / 60)) * 2;
          return RotatedBox(
            quarterTurns: 2,
            child: Transform.rotate(
              angle: angleSecond,
              child: Transform.translate(
                offset: Offset(0, radius / 2),
                child: Center(
                  child: Container(
                    height: radius,
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
