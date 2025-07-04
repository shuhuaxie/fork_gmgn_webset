import 'package:flutter/material.dart';
import 'token_detail_chart_top_ruler.dart';
import 'token_detail_chart_grid_layer.dart';
import 'token_detail_chart_volume_layer.dart';
import 'token_detail_chart_tick_layer.dart';
import 'token_detail_chart_popup_layer.dart';
import 'token_detail_chart_crosshair_layer.dart';
import 'token_detail_chart_bottom_ruler.dart';
import 'token_detail_chart_date_ruler.dart';

/// 图表区（宽520，高180，背景#181A20，圆角16，内边距16）
class TokenDetailChart extends StatelessWidget {
  const TokenDetailChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 520,
      height: 180,
      margin: const EdgeInsets.symmetric(horizontal: 0),
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: const Color(0xFF181A20),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: const [
                // 价格刻度
                Positioned(
                  top: 8,
                  right: 0,
                  child: TokenDetailChartTopRuler(),
                ),
                // 网格
                TokenDetailChartGridLayer(),
                // tick标记
                TokenDetailChartTickLayer(),
                // 买卖点浮层
                TokenDetailChartPopupLayer(),
                // 十字线
                TokenDetailChartCrosshairLayer(),
                // 底部折线图
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: TokenDetailChartVolumeLayer(),
                ),
              ],
            ),
          ),
          // 日期刻度
          const TokenDetailChartDateRuler(),
        ],
      ),
    );
  }
} 