import 'package:flutter/material.dart';

class DialPainter extends CustomPainter {
  final Color dialColor;
  final Offset offset;
  final double radius;

  DialPainter({
    required this.dialColor,
    required this.offset,
    required this.radius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var baseDial = Paint()
      ..color = dialColor
      ..style = PaintingStyle.fill;

    canvas.drawCircle(offset, radius, baseDial);
    // draw border
    canvas.drawCircle(offset, radius - 16, baseDial..color = Colors.black);
    // draw middle circle
    canvas.drawCircle(offset, 8, baseDial..color = Colors.white);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
