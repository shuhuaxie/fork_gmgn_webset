import 'package:flutter/material.dart';

class TokenDetailChartVolumeLayer extends StatelessWidget {
  const TokenDetailChartVolumeLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(double.infinity, 40),
      painter: _VolumePainter(),
    );
  }
}

class _VolumePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // mock数据，红绿交替
    final barWidth = size.width / 16;
    final barGap = 4.0;
    for (int i = 0; i < 16; i++) {
      final isUp = i % 2 == 0;
      final color = isUp ? const Color(0xFF22C55E) : const Color(0xFFFF6F91);
      final x = i * barWidth + barGap / 2;
      final y = size.height * (0.2 + 0.6 * (1 - (i % 4) / 3));
      canvas.drawRect(
        Rect.fromLTRB(x, y, x + barWidth - barGap, size.height),
        Paint()..color = color.withOpacity(0.7),
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
} 