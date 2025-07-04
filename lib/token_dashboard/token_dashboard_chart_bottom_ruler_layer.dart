import 'package:flutter/material.dart';

/// K线图底部时间标尺层（居中对齐，字号11，颜色#8E929D，三条，间距均分，高度220）
class TokenDashboardChartBottomRulerLayer extends StatelessWidget {
  const TokenDashboardChartBottomRulerLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final h = constraints.maxHeight;
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('07/02', style: TextStyle(color: Color(0xFF8E929D), fontSize: 11)),
                Text('07/03', style: TextStyle(color: Color(0xFF8E929D), fontSize: 11)),
                Text('02:00', style: TextStyle(color: Color(0xFF8E929D), fontSize: 11)),
              ],
            ),
            const SizedBox(height: 2),
          ],
        );
      },
    );
  }
} 