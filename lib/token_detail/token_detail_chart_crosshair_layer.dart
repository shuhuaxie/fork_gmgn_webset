import 'package:flutter/material.dart';

class TokenDetailChartCrosshairLayer extends StatelessWidget {
  const TokenDetailChartCrosshairLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(double.infinity, 140),
      painter: _CrosshairPainter(),
    );
  }
}

class _CrosshairPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final x = size.width * 0.65;
    final y = size.height * 0.32;
    final paint = Paint()
      ..color = const Color(0xFF8E929D)
      ..strokeWidth = 1;
    // 竖线
    canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    // 横线
    canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
} 