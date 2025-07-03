import 'package:flutter/material.dart';

class NavTabs extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;
  const NavTabs({Key? key, required this.selectedIndex, required this.onTabSelected}) : super(key: key);

  static const tabs = [
    '战场', '新币', '热门', '探索', '监控', '追踪', '持仓'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 390,
        height: 44,
        color: const Color(0xFF181A20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(tabs.length, (i) => Padding(
            padding: const EdgeInsets.only(left: 0, right: 8),
            child: GestureDetector(
              onTap: () => onTabSelected(i),
              child: Container(
                height: 44,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: i == selectedIndex
                    ? const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Color(0xFF3772FF), width: 3),
                        ),
                      )
                    : null,
                child: Text(
                  tabs[i],
                  style: TextStyle(
                    color: i == selectedIndex ? Colors.white : const Color(0xFFB0B3BC),
                    fontWeight: i == selectedIndex ? FontWeight.w700 : FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          )),
        ),
      ),
    );
  }
} 