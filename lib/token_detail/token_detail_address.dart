import 'package:flutter/material.dart';

/// 地址区（宽520，高48，左右内边距24，背景透明）
class TokenDetailAddress extends StatelessWidget {
  const TokenDetailAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 520,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      color: Colors.transparent,
      child: Row(
        children: const [
          Icon(Icons.account_circle, color: Color(0xFFB0B3BC), size: 20),
          SizedBox(width: 8),
          Expanded(child: Text('0x7cd0b104afb42e7d2fa9534a660f46b2bd6d8a4', style: TextStyle(color: Colors.white, fontSize: 14))),
          Icon(Icons.edit, color: Color(0xFFB0B3BC), size: 18),
          SizedBox(width: 8),
          Icon(Icons.copy, color: Color(0xFFB0B3BC), size: 18),
          SizedBox(width: 8),
          Icon(Icons.favorite_border, color: Color(0xFFB0B3BC), size: 18),
        ],
      ),
    );
  }
} 