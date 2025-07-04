import 'package:flutter/material.dart';
import 'token_dashboard_chart_grid_layer.dart';
import 'token_dashboard_chart_top_ruler_layer.dart';
import 'token_dashboard_chart_bottom_ruler_layer.dart';
import 'token_dashboard_chart_volume_layer.dart';
import 'token_dashboard_chart_tick_layer.dart';
import 'token_dashboard_chart_candle_layer.dart';

/// TokenDashboardChart: 像素级K线图UI骨架，静态mock数据
class TokenDashboardChart extends StatelessWidget {
  const TokenDashboardChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF181A20),
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // 主K线区
          SizedBox(
            width: double.infinity,
            height: 220,
            child: Stack(
              children: [
                const TokenDashboardChartGridLayer(),
                const Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: SizedBox(
                    width: 80,
                    height: 220,
                    child: TokenDashboardChartTopRulerLayer(),
                  ),
                ),
                // 日期标尺最底层
                const Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: SizedBox(
                    height: 220,
                    child: TokenDashboardChartBottomRulerLayer(),
                  ),
                ),
                // 只保留一层柱状图，底部对齐且不遮挡日期
                const Positioned(
                  left: 0,
                  right: 0,
                  bottom: 18, // 给日期标尺留空间
                  child: SizedBox(
                    height: 48,
                    child: TokenDashboardChartVolumeLayer(),
                  ),
                ),
                const TokenDashboardChartTickLayer(),
                const TokenDashboardChartCandleLayer(),
                // 后续继续叠加其他层
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class _MockVolumeBar extends StatelessWidget {
  final double height;
  final Color color;
  const _MockVolumeBar({required this.height, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
} 