import 'package:flutter/material.dart';

class TokenDetailChartTickLayer extends StatelessWidget {
  const TokenDetailChartTickLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(double.infinity, 180),
      painter: _TickPainter(),
    );
  }
}

class _TickPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final tickX = size.width * 0.65;
    // 竖虚线
    final dashHeight = 6.0;
    final dashSpace = 4.0;
    double startY = 0;
    final paint = Paint()
      ..color = const Color(0xFF8E929D)
      ..strokeWidth = 1;
    while (startY < size.height) {
      canvas.drawLine(Offset(tickX, startY), Offset(tickX, startY + dashHeight), paint);
      startY += dashHeight + dashSpace;
    }
    // 红色S圆点
    final sCenter = Offset(tickX, size.height * 0.32);
    canvas.drawCircle(sCenter, 10, Paint()..color = const Color(0xFFFF6F91));
    final textPainter = TextPainter(
      text: const TextSpan(text: 'S', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 14)),
      textDirection: TextDirection.ltr,
    )..layout();
    textPainter.paint(canvas, sCenter - Offset(textPainter.width / 2, textPainter.height / 2));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
} 