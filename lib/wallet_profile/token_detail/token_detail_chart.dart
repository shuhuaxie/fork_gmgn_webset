import 'package:flutter/material.dart';

/// 图表区（宽520，高180，背景#181A20，圆角16，内边距16）
class TokenDetailChart extends StatelessWidget {
  const TokenDetailChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 520,
      height: 180,
      margin: const EdgeInsets.symmetric(horizontal: 0),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF181A20),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text('图表区', style: TextStyle(color: Colors.white.withOpacity(0.3), fontSize: 20)),
      ),
    );
  }
} 