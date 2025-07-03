import 'package:flutter/material.dart';

/// 统计区（宽520，高100，背景透明，内容可用占位）
class TokenDashboardStats extends StatelessWidget {
  const TokenDashboardStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 520,
      height: 100,
      color: Colors.transparent,
      child: Center(
        child: Text('统计区', style: TextStyle(color: Colors.white.withOpacity(0.3), fontSize: 20)),
      ),
    );
  }
} 