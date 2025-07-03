import 'package:flutter/material.dart';

typedef RecentTabChanged = void Function(int index);

class RecentTabs extends StatelessWidget {
  final int selectedIndex;
  final RecentTabChanged? onTabChanged;
  const RecentTabs({super.key, this.selectedIndex = 0, this.onTabChanged});

  @override
  Widget build(BuildContext context) {
    final tabs = ['最近盈亏', '持有代币', '活动', '部署代币'];
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      child: Row(
        children: List.generate(tabs.length, (i) =>
          Padding(
            padding: EdgeInsets.only(right: i < tabs.length - 1 ? 8 : 0),
            child: _RecentTab(
              tabs[i],
              selected: selectedIndex == i,
              onTap: () => onTabChanged?.call(i),
            ),
          ),
        ),
      ),
    );
  }
}

class _RecentTab extends StatelessWidget {
  final String text;
  final bool selected;
  final VoidCallback? onTap;
  const _RecentTab(this.text, {this.selected = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 32,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        decoration: BoxDecoration(
          color: selected ? const Color(0xFF23262F) : const Color(0xFF181A20),
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: selected ? Colors.white : const Color(0xFFB0B3BC),
            fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
} 