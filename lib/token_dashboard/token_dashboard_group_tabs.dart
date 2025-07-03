import 'package:flutter/material.dart';

/// 分组tab（宽520，高36，tab间距8，字号14，选中高亮#fff，未选中#B0B3BC）
class TokenDashboardGroupTabs extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabChanged;
  const TokenDashboardGroupTabs({super.key, required this.selectedIndex, required this.onTabChanged});

  @override
  Widget build(BuildContext context) {
    final tabs = ['全部', '聪明钱 169', 'KOL/VC 75', '追踪', '备注', '开发者 1', '蓝筹持有'];
    return Container(
      width: 520,
      height: 36,
      color: Colors.transparent,
      child: Row(
        children: List.generate(tabs.length, (i) =>
          Padding(
            padding: EdgeInsets.only(right: i < tabs.length - 1 ? 8 : 0),
            child: GestureDetector(
              onTap: () => onTabChanged(i),
              child: _GroupTabBtn(
                tabs[i],
                selected: i == selectedIndex,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _GroupTabBtn extends StatelessWidget {
  final String text;
  final bool selected;
  const _GroupTabBtn(this.text, {this.selected = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFF23262F) : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: selected ? Colors.white : const Color(0xFFB0B3BC),
          fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
          fontSize: 14,
        ),
      ),
    );
  }
} 