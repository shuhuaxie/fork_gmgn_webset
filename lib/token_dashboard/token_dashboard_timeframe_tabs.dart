import 'package:flutter/material.dart';

/// K线图时间区间tab（1s、15s、30s、1m、5m、15m、1h等，横向排列，选中高亮）
class TokenDashboardTimeframeTabs extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;
  const TokenDashboardTimeframeTabs({super.key, required this.selectedIndex, required this.onTabSelected});

  @override
  Widget build(BuildContext context) {
    final tabs = ['1s', '15s', '30s', '1m', '5m', '15m', '1h'];
    return SizedBox(
      height: 36,
      child: Row(
        children: List.generate(tabs.length, (i) =>
          Padding(
            padding: EdgeInsets.only(right: i < tabs.length - 1 ? 8 : 0),
            child: GestureDetector(
              onTap: () => onTabSelected(i),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: i == selectedIndex ? const Color(0xFF23262F) : Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  tabs[i],
                  style: TextStyle(
                    color: i == selectedIndex ? Colors.white : const Color(0xFFB0B3BC),
                    fontWeight: i == selectedIndex ? FontWeight.w700 : FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
} 