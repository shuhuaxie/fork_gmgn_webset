import 'package:flutter/material.dart';

/// K线图主蜡烛图层（绿色#22C55E和红色#FF6F91，宽8，间距8，带上下影线，静态mock数据）
class TokenDashboardChartCandleLayer extends StatelessWidget {
  const TokenDashboardChartCandleLayer({super.key});

  @override
  Widget build(BuildContext context) {
    // mock数据
    final List<_Candle> candles = [
      _Candle(x: 24, open: 180, close: 100, high: 80, low: 190, color: const Color(0xFF22C55E)),
      _Candle(x: 40, open: 120, close: 160, high: 110, low: 170, color: const Color(0xFFFF6F91)),
      _Candle(x: 56, open: 140, close: 90, high: 80, low: 150, color: const Color(0xFF22C55E)),
      _Candle(x: 72, open: 100, close: 130, high: 90, low: 140, color: const Color(0xFFFF6F91)),
      _Candle(x: 88, open: 120, close: 60, high: 50, low: 130, color: const Color(0xFF22C55E)),
    ];
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            for (final c in candles)
              Positioned(
                left: c.x,
                child: _CandleWidget(candle: c),
              ),
          ],
        );
      },
    );
  }
}

class _Candle {
  final double x;
  final double open;
  final double close;
  final double high;
  final double low;
  final Color color;
  const _Candle({required this.x, required this.open, required this.close, required this.high, required this.low, required this.color});
}

class _CandleWidget extends StatelessWidget {
  final _Candle candle;
  const _CandleWidget({required this.candle});
  @override
  Widget build(BuildContext context) {
    final double top = candle.high;
    final double bottom = candle.low;
    final double bodyTop = candle.open < candle.close ? candle.open : candle.close;
    final double bodyBottom = candle.open > candle.close ? candle.open : candle.close;
    final double bodyHeight = (bodyBottom - bodyTop).abs();
    return SizedBox(
      width: 8,
      height: 220,
      child: Stack(
        children: [
          // 上影线
          Positioned(
            left: 3.5,
            top: top,
            child: Container(
              width: 1,
              height: bodyTop - top,
              color: candle.color,
            ),
          ),
          // 下影线
          Positioned(
            left: 3.5,
            top: bodyBottom,
            child: Container(
              width: 1,
              height: bottom - bodyBottom,
              color: candle.color,
            ),
          ),
          // 实体
          Positioned(
            left: 0,
            top: bodyTop,
            child: Container(
              width: 8,
              height: bodyHeight == 0 ? 1 : bodyHeight,
              decoration: BoxDecoration(
                color: candle.color,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
        ],
      ),
    );
  }
} 