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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.shield, color: Color(0xFF8B5CF6), size: 20),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('钓鱼检测', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 14)),
                SizedBox(height: 10),
                Text('黑名单: 0 (0%)', style: TextStyle(color: Color(0xFF00C076), fontSize: 13)),
                Text('未购买: 1,166 (98.4%)', style: TextStyle(color: Color(0xFFFF5B5B), fontSize: 13)),
                Text('卖出量大于买入量: 0 (0%)', style: TextStyle(color: Color(0xFF00C076), fontSize: 13)),
                Text('五秒内完成买/卖: 0 (0%)', style: TextStyle(color: Color(0xFF00C076), fontSize: 13)),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 