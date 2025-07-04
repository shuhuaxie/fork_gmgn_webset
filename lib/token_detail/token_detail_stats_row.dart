import 'package:flutter/material.dart';

class TokenDetailStatsRow extends StatelessWidget {
  const TokenDetailStatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                _StatsItem(label: 'Total Profit:', value: '--', valueColor: Color(0xFFB0B3BC)),
                SizedBox(height: 6),
                _StatsItem(label: 'Current Position', value: '4\$54.1K', valueColor: Color(0xFF22C55E)),
                SizedBox(height: 6),
                _StatsItem(label: 'Total Buy/Total Sell', value: '\$0/\$6,313.13', valueColor: Color(0xFFB0B3BC)),
                SizedBox(height: 6),
                _StatsItem(label: 'Avg Buy/Avg Sell', value: '\$0.09775', valueColor: Color(0xFFB0B3BC)),
              ],
            ),
          ),
          // Vertical divider
          Container(width: 1, height: 80, color: const Color(0xFF23262F)),
          // Right column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                _StatsItem(label: 'Unrealized Profit', value: '--', valueColor: Color(0xFFB0B3BC)),
                SizedBox(height: 6),
                _StatsItem(label: 'Position%(600.2K/0)', value: '>999999%', valueColor: Color(0xFF22C55E)),
                SizedBox(height: 6),
                _StatsItem(label: 'Trades', value: '--/5', valueColor: Color(0xFFFF6F91)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _StatsItem extends StatelessWidget {
  final String label;
  final String value;
  final Color valueColor;
  const _StatsItem({required this.label, required this.value, required this.valueColor});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label, style: const TextStyle(color: Color(0xFFB0B3BC), fontSize: 13)),
        const SizedBox(width: 2),
        Text(value, style: TextStyle(color: valueColor, fontSize: 13, fontWeight: FontWeight.w600)),
      ],
    );
  }
} 