import 'package:flutter/widgets.dart';
import 'package:iphone6_memory/gradient_painter.dart';

class GradientLine extends StatelessWidget implements PreferredSizeWidget {
  const GradientLine({
    Key key,
    this.height = 1.5,
  }) : super(key: key);

  final double height;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: GradientPainter(),
      size: Size.fromHeight(height),
    );
  }
}
