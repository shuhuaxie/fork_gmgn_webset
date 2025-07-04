import 'package:flutter/material.dart';

/// K线图顶部价格标尺层（右对齐，字号11，颜色#8E929D，三条，间距均分，高度220）
class TokenDashboardChartTopRulerLayer extends StatelessWidget {
  const TokenDashboardChartTopRulerLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final h = constraints.maxHeight;
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text('0.00056000', style: TextStyle(color: Color(0xFF8E929D), fontSize: 11)),
            Text('0.00050000', style: TextStyle(color: Color(0xFF8E929D), fontSize: 11)),
            Text('0.00044000', style: TextStyle(color: Color(0xFF8E929D), fontSize: 11)),
          ],
        );
      },
    );
  }
} 