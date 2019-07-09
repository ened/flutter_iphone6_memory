import 'dart:math';

import 'package:flutter/rendering.dart';
import 'package:iphone6_memory/constants.dart';

class GradientPainter extends CustomPainter {
  static final Gradient _gradient = LinearGradient(colors: kGradientColors);
  @override
  void paint(Canvas canvas, Size size) {
    final Paint p = Paint();

    p.shader = _gradient.createShader(Offset.zero & size);

    // print("radians: $kGradientAngleRadians, $size");

    canvas.save();

    canvas.clipRect(Offset.zero & size);
    // canvas.translate(0, size.height / 2);

    final b = size.width * tan(90);
    final c = sqrt(size.width * size.width + b * b);
    // print("b: $b, $c");

    canvas.rotate(kGradientAngleRadians);
    canvas.drawRect(Offset(0.0, -b) & Size(c, b * 2), p);
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
