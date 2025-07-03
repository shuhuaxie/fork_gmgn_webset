import 'package:flutter/material.dart';

/// K线按钮区（宽520，高48，左右内边距24，背景透明）
class TokenDetailKlineBtn extends StatelessWidget {
  const TokenDetailKlineBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 520,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      color: Colors.transparent,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF23262F),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.symmetric(vertical: 12),
        ),
        child: const Text('K线订单', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700)),
      ),
    );
  }
} 