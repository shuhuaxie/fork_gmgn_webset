import 'package:flutter/material.dart';

/// K线图底部柱状图层（成交量，绿色#22C55E和红色#FF6F91，底部对齐，高48，横向自适应填满）
class TokenDashboardChartVolumeLayer extends StatelessWidget {
  const TokenDashboardChartVolumeLayer({super.key});

  @override
  Widget build(BuildContext context) {
    // mock数据，数量多一些
    final List<_Bar> bars = List.generate(30, (i) =>
      _Bar(
        height: 12 + (36 * (i % 5) / 5),
        color: i % 2 == 0 ? const Color(0xFF22C55E) : const Color(0xFFFF6F91),
      ),
    );
    return LayoutBuilder(
      builder: (context, constraints) {
        final totalWidth = constraints.maxWidth - 32; // 左右padding各16
        final barCount = bars.length;
        final barWidth = 6.0;
        final gap = (totalWidth - barCount * barWidth) / (barCount - 1);
        return Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              for (int i = 0; i < bars.length; i++) ...[
                Container(
                  width: barWidth,
                  height: bars[i].height,
                  decoration: BoxDecoration(
                    color: bars[i].color,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                if (i != bars.length - 1) SizedBox(width: gap),
              ]
            ],
          ),
        );
      },
    );
  }
}

class _Bar {
  final double height;
  final Color color;
  const _Bar({required this.height, required this.color});
} 