import 'package:flutter/material.dart';

/// 统计区（宽520，高120，左右内边距24，背景透明）
class TokenDetailStats extends StatelessWidget {
  const TokenDetailStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 520,
      height: 120,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      color: Colors.transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 左侧
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('总利润: -\$0.028(-2.64%)', style: TextStyle(color: Color(0xFFFF5B5B), fontSize: 15, fontWeight: FontWeight.w700)),
                SizedBox(height: 4),
                Text('当前持仓 \$0.038', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13)),
                SizedBox(height: 4),
                Text('总买入/总卖出 \$1.07/\$1.01', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13)),
              ],
            ),
          ),
          // 右侧
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('未实现利润: \$0.001(+3.84%)', style: TextStyle(color: Color(0xFF22C55E), fontSize: 15, fontWeight: FontWeight.w700)),
                SizedBox(height: 4),
                Text('持仓% 3.37%', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13)),
                SizedBox(height: 4),
                Text('交易数 9/4', style: TextStyle(color: Color(0xFF22C55E), fontSize: 13)),
                SizedBox(height: 4),
                Text('平均买价/平均卖价 \$0.062491/\$0.062209', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13)),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 