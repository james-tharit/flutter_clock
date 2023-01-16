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
    var paint1 = Paint()
      ..color = dialColor
      ..style = PaintingStyle.fill;
    print(offset);
    canvas.drawCircle(offset, radius, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
