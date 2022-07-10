import 'package:flutter/material.dart';

class _OnboardingPageIndicatorPainter extends CustomPainter {
  final Color color;
  final double startAngle;
  final double indicatorLength;

  _OnboardingPageIndicatorPainter(
      this.color, this.startAngle, this.indicatorLength);
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0;

    canvas.drawArc(
      Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2),
          radius: (size.shortestSide + 12.0) / 2),
      startAngle,
      indicatorLength,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(_OnboardingPageIndicatorPainter oldDelegate) =>
      this.color != oldDelegate.color ||
      this.startAngle != oldDelegate.startAngle;

  @override
  bool shouldRebuildSemantics(_OnboardingPageIndicatorPainter oldDelegate) =>
      false;
}
