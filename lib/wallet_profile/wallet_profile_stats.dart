import 'package:flutter/material.dart';

class WalletProfileStats extends StatelessWidget {
  const WalletProfileStats({Key? key}) : super(key: key);

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
          // 左侧
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('7D 已实现利润', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 14)),
                SizedBox(height: 8),
                Text('-6.41%', style: TextStyle(color: Color(0xFFFF5B5B), fontSize: 28, fontWeight: FontWeight.w800)),
                SizedBox(height: 2),
                Text('-\$3,972.81', style: TextStyle(color: Color(0xFFFF5B5B), fontSize: 16, fontWeight: FontWeight.w600)),
                SizedBox(height: 12),
                Text('总盈亏', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13)),
                Text('未实现利润', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13)),
              ],
            ),
          ),
          // 右侧
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text('胜率', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 14)),
                const SizedBox(height: 8),
                const Text('29.41%', style: TextStyle(color: Color(0xFF00C076), fontSize: 28, fontWeight: FontWeight.w800)),
                const SizedBox(height: 2),
                const Text('+\$897.8K (+4.32%)', style: TextStyle(color: Color(0xFF00C076), fontSize: 16, fontWeight: FontWeight.w600)),
                const SizedBox(height: 12),
                const Text('-\$8,791.6', style: TextStyle(color: Color(0xFFFF5B5B), fontSize: 13)),
                // 简单柱状图占位
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  width: 80,
                  height: 32,
                  color: Color(0xFF181A20),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 12,
                      height: 24,
                      color: Color(0xFFFF5B5B),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 