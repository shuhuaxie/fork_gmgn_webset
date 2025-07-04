import 'package:flutter/material.dart';

/// K线图信息行（名称 合约 27/70 100% ...），左对齐，像素级还原
class TokenDashboardChartInfoRow extends StatelessWidget {
  const TokenDashboardChartInfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        children: [
          const Icon(Icons.search, color: Color(0xFF8E929D), size: 16),
          const SizedBox(width: 4),
          const Text('名称', style: TextStyle(color: Color(0xFF8E929D), fontSize: 13)),
          const SizedBox(width: 12),
          const Icon(Icons.assignment, color: Color(0xFF8E929D), size: 16),
          const SizedBox(width: 4),
          const Text('合约', style: TextStyle(color: Color(0xFF8E929D), fontSize: 13)),
          const SizedBox(width: 12),
          const Icon(Icons.check_circle, color: Color(0xFF22C55E), size: 16),
          const SizedBox(width: 4),
          const Text('27/70', style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w600)),
          const SizedBox(width: 12),
          const Icon(Icons.verified, color: Color(0xFF22C55E), size: 16),
          const SizedBox(width: 4),
          const Text('100%', style: TextStyle(color: Color(0xFF22C55E), fontSize: 13, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
} 