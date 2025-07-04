import 'package:flutter/material.dart';

/// K线图中间短竖线tick层（高度16，宽1，颜色#8E929D，底部对齐，静态mock数据，避免与日期重叠）
class TokenDashboardChartTickLayer extends StatelessWidget {
  const TokenDashboardChartTickLayer({super.key});

  @override
  Widget build(BuildContext context) {
    // mock数据：tick分布在主K线区宽度上
    final List<double> ticks = [40, 80, 120, 160, 200, 240, 280];
    return LayoutBuilder(
      builder: (context, constraints) {
        final h = constraints.maxHeight;
        return Stack(
          children: [
            for (final x in ticks)
              Positioned(
                left: x,
                bottom: 18, // 避免与日期重叠
                child: Container(
                  width: 1,
                  height: 16,
                  color: const Color(0xFF8E929D),
                ),
              ),
          ],
        );
      },
    );
  }
} 