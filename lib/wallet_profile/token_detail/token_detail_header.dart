import 'package:flutter/material.dart';

/// 顶部信息区（宽520，高72，左右内边距24，上下内边距16，背景透明）
class TokenDetailHeader extends StatelessWidget {
  const TokenDetailHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 520,
      height: 72,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      color: Colors.transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 币种icon
          Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              color: Color(0xFF181A20),
              shape: BoxShape.circle,
            ),
            child: const Center(child: Text('BL', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18))),
          ),
          const SizedBox(width: 12),
          // 币种名+价格+市值
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('BLK  \$0.0625963', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18)),
              SizedBox(height: 2),
              Text('市值 \$26K', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13)),
            ],
          ),
          const SizedBox(width: 12),
          // 右侧tab
          Spacer(),
          _TimeTabBar(),
          const SizedBox(width: 12),
          // 关闭按钮
          Icon(Icons.close, color: Color(0xFFB0B3BC), size: 24),
        ],
      ),
    );
  }
}

/// 时间TabBar（4h/1d/30d，选中高亮，圆角8，字号14，间距8）
class _TimeTabBar extends StatelessWidget {
  const _TimeTabBar();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _TimeTab('4h', selected: false),
        const SizedBox(width: 8),
        _TimeTab('1d', selected: true),
        const SizedBox(width: 8),
        _TimeTab('30d', selected: false),
      ],
    );
  }
}

class _TimeTab extends StatelessWidget {
  final String text;
  final bool selected;
  const _TimeTab(this.text, {required this.selected});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFF23262F) : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: selected ? Colors.white : const Color(0xFFB0B3BC),
          fontWeight: FontWeight.w700,
          fontSize: 14,
        ),
      ),
    );
  }
} 