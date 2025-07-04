import 'package:flutter/material.dart';

class TokenDetailChartGridLayer extends StatelessWidget {
  const TokenDetailChartGridLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(double.infinity, 180),
      painter: _GridPainter(),
    );
  }
}

class _GridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF23262F)
      ..strokeWidth = 1;
    // 横线
    for (int i = 0; i < 7; i++) {
      final dy = size.height / 7 * i;
      canvas.drawLine(Offset(0, dy), Offset(size.width, dy), paint);
    }
    // 竖线
    for (int i = 0; i < 8; i++) {
      final dx = size.width / 7 * i;
      canvas.drawLine(Offset(dx, 0), Offset(dx, size.height), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
} 