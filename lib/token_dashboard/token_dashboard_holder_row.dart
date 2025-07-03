import 'package:flutter/material.dart';

/// 持有人表单行（高48，圆角0，背景透明，分割线#23262F，内容分为序号、地址、icon组、占比、金额、ETH、时间）
class TokenDashboardHolderRow extends StatelessWidget {
  final int rank;
  final String address;
  final String percent;
  final String amount;
  final String eth;
  final String time;
  const TokenDashboardHolderRow({required this.rank, required this.address, required this.percent, required this.amount, required this.eth, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFF23262F), width: 1)),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 32,
            child: Center(
              child: Text('$rank', style: const TextStyle(color: Color(0xFFFFD700), fontWeight: FontWeight.w700, fontSize: 15)),
            ),
          ),
          const SizedBox(width: 4),
          SizedBox(
            width: 100,
            child: Text(address, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 15)),
          ),
          const SizedBox(width: 4),
          Row(
            children: const [
              Icon(Icons.person, color: Color(0xFFB0B3BC), size: 18),
              SizedBox(width: 2),
              Icon(Icons.group, color: Color(0xFF22C55E), size: 18),
              SizedBox(width: 2),
              Icon(Icons.flag, color: Color(0xFFFF5B5B), size: 18),
            ],
          ),
          const SizedBox(width: 8),
          SizedBox(
            width: 60,
            child: Text(percent, style: const TextStyle(color: Color(0xFFB0B3BC), fontSize: 14, fontWeight: FontWeight.w600)),
          ),
          SizedBox(
            width: 80,
            child: Text(amount, style: const TextStyle(color: Color(0xFFB0B3BC), fontSize: 14, fontWeight: FontWeight.w600)),
          ),
          SizedBox(
            width: 60,
            child: Text(eth, style: const TextStyle(color: Color(0xFFB0B3BC), fontSize: 14, fontWeight: FontWeight.w600)),
          ),
          SizedBox(
            width: 80,
            child: Text(time, style: const TextStyle(color: Color(0xFFB0B3BC), fontSize: 12)),
          ),
        ],
      ),
    );
  }
} 