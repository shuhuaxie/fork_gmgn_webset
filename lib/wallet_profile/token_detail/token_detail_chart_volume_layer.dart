import 'package:flutter/material.dart';

class TokenDetailChartVolumeLayer extends StatelessWidget {
  const TokenDetailChartVolumeLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(double.infinity, 40),
      painter: _LinePainter(),
    );
  }
}

class _LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // 更贴近UI图的mock折线数据
    final List<double> values = [
      0.7, 0.6, 0.8, 0.5, 0.9, 0.4, 0.6, 0.3, 0.7, 0.5, 0.8, 0.6, 0.9, 0.7, 0.8, 0.6
    ];
    final points = <Offset>[];
    for (int i = 0; i < values.length; i++) {
      final x = i * size.width / (values.length - 1);
      final y = size.height * (1 - values[i]);
      points.add(Offset(x, y));
    }
    for (int i = 0; i < points.length - 1; i++) {
      final isUp = points[i + 1].dy < points[i].dy;
      final color = isUp ? const Color(0xFF22C55E) : const Color(0xFFFF6F91);
      final paint = Paint()
        ..color = color
        ..strokeWidth = 2
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round;
      canvas.drawLine(points[i], points[i + 1], paint);
    }
    // 可选：画圆点
    for (final p in points) {
      canvas.drawCircle(p, 2.5, Paint()..color = Colors.white);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
} 