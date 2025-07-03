import 'package:flutter/material.dart';

/// 底部悬浮按钮区（宽520，高64，背景#181A20，圆角16，按钮间距24，按钮宽高48，icon+文案，字号14，颜色#B0B3BC）
class TokenDashboardBottomNav extends StatelessWidget {
  const TokenDashboardBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 520,
      height: 64,
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF181A20),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          _NavBtn(icon: Icons.shopping_cart, label: '买入'),
          _NavBtn(icon: Icons.sell, label: '卖出'),
          _NavBtn(icon: Icons.verified, label: '审核'),
          _NavBtn(icon: Icons.info_outline, label: '信息'),
        ],
      ),
    );
  }
}

class _NavBtn extends StatelessWidget {
  final IconData icon;
  final String label;
  const _NavBtn({required this.icon, required this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: const Color(0xFF23262F),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: const Color(0xFFB0B3BC), size: 24),
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Color(0xFFB0B3BC), fontSize: 14)),
      ],
    );
  }
} 