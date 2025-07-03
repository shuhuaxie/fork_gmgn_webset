import 'package:flutter/material.dart';

class WalletProfileStats extends StatelessWidget {
  const WalletProfileStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      padding: const EdgeInsets.fromLTRB(16, 18, 16, 18),
      decoration: BoxDecoration(
        color: const Color(0xFF23262F),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 左侧
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      '7D 已实现利润',
                      style: TextStyle(
                        color: Color(0xFFB0B3BC),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.1,
                      ),
                    ),
                    const SizedBox(width: 6),
                    const Icon(Icons.sync_alt, color: Color(0xFFB0B3BC), size: 14),
                    const SizedBox(width: 2),
                    const Text('USD', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 12)),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      '-6.41%',
                      style: TextStyle(
                        color: Color(0xFFFF5B5B),
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.1,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      '-\$3,972.81',
                      style: TextStyle(
                        color: Color(0xFFFF5B5B),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                const Text('总盈亏', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13)),
                const SizedBox(height: 2),
                const Text('未实现利润', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13)),
              ],
            ),
          ),
          // 右侧
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text('胜率', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 14, fontWeight: FontWeight.w500)),
                const SizedBox(height: 10),
                const Text('29.41%', style: TextStyle(color: Color(0xFF00C076), fontSize: 28, fontWeight: FontWeight.w800, letterSpacing: 0.1)),
                const SizedBox(height: 2),
                const Text('+\$897.8K (+4.32%)', style: TextStyle(color: Color(0xFF00C076), fontSize: 16, fontWeight: FontWeight.w600, letterSpacing: 0.1)),
                const SizedBox(height: 10),
                const Text('-\$8,791.6', style: TextStyle(color: Color(0xFFFF5B5B), fontSize: 13)),
                // 柱状图占位
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 90,
                  height: 32,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      _Bar(height: 8, color: const Color(0xFF00C076)),
                      SizedBox(width: 2),
                      _Bar(height: 16, color: const Color(0xFFFF5B5B)),
                      SizedBox(width: 2),
                      _Bar(height: 24, color: const Color(0xFF00C076)),
                      SizedBox(width: 2),
                      _Bar(height: 32, color: const Color(0xFFFF5B5B)),
                    ],
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

class _Bar extends StatelessWidget {
  final double height;
  final Color color;
  const _Bar({required this.height, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
} 