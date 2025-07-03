import 'package:flutter/material.dart';

/// 顶部统计行（宽520，高48，左右内边距16，背景透明）
class TokenDashboardTopStats extends StatelessWidget {
  const TokenDashboardTopStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 520,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      color: Colors.transparent,
      child: Row(
        children: const [
          _StatBlock(title: '持有者', value: '788K'),
          _StatBlock(title: 'Top 10 占比', value: '--%'),
          _StatBlock(title: '人均持币金额', value: '250.26'),
        ],
      ),
    );
  }
}

class _StatBlock extends StatelessWidget {
  final String title;
  final String value;
  const _StatBlock({required this.title, required this.value});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title, style: const TextStyle(color: Color(0xFFB0B3BC), fontSize: 13)),
          const SizedBox(height: 4),
          Text(value, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16)),
        ],
      ),
    );
  }
} 