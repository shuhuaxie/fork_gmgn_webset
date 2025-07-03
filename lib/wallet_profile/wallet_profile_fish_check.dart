import 'package:flutter/material.dart';

class WalletProfileFishCheck extends StatelessWidget {
  const WalletProfileFishCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF23262F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('钓鱼检测', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 15)),
          SizedBox(height: 12),
          Text('黑名单: 0 (0%)', style: TextStyle(color: Color(0xFF00C076), fontSize: 14)),
          Text('未购买: 1,166 (98.4%)', style: TextStyle(color: Color(0xFFFF5B5B), fontSize: 14)),
          Text('卖出量大于买入量: 0 (0%)', style: TextStyle(color: Color(0xFF00C076), fontSize: 14)),
          Text('五秒内完成买/卖: 0 (0%)', style: TextStyle(color: Color(0xFF00C076), fontSize: 14)),
        ],
      ),
    );
  }
} 