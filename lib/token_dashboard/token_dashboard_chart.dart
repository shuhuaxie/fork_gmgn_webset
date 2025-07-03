import 'package:flutter/material.dart';

/// 主K线区（宽520，高260，背景#181A20，圆角0，内边距0）
class TokenDashboardChart extends StatelessWidget {
  const TokenDashboardChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 520,
      height: 260,
      color: const Color(0xFF181A20),
      child: Center(
        child: Text('主K线区', style: TextStyle(color: Colors.white.withOpacity(0.3), fontSize: 20)),
      ),
    );
  }
} 