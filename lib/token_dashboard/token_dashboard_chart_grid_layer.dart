import 'package:flutter/material.dart';

/// K线图水平尺度线层（3条线，颜色#23262F，间距均分，高度220）
class TokenDashboardChartGridLayer extends StatelessWidget {
  const TokenDashboardChartGridLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(double.infinity, 220),
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
    // 三条线，y=0, y=110, y=220
    canvas.drawLine(Offset(0, 0), Offset(size.width, 0), paint);
    canvas.drawLine(Offset(0, size.height / 2), Offset(size.width, size.height / 2), paint);
    canvas.drawLine(Offset(0, size.height), Offset(size.width, size.height), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
} 