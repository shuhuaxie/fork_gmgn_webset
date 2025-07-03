import 'package:flutter/material.dart';

/// 顶部tab（宽520，高40，背景透明，tab间距16，字号15，选中高亮#fff，未选中#B0B3BC）
class TokenDashboardTabs extends StatelessWidget {
  const TokenDashboardTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = ['战壕', '新币', '热门', '探索', '监控', '追踪', '持仓'];
    return Container(
      width: 520,
      height: 40,
      color: Colors.transparent,
      child: Row(
        children: List.generate(tabs.length, (i) =>
          Padding(
            padding: EdgeInsets.only(right: i < tabs.length - 1 ? 16 : 0),
            child: _TabBtn(
              tabs[i],
              selected: i == 2, // 示例：热门选中
            ),
          ),
        ),
      ),
    );
  }
}

class _TabBtn extends StatelessWidget {
  final String text;
  final bool selected;
  const _TabBtn(this.text, {this.selected = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFF23262F) : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: selected ? Colors.white : const Color(0xFFB0B3BC),
          fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
          fontSize: 15,
        ),
      ),
    );
  }
} 