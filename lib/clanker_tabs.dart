import 'package:flutter/material.dart';

class ClankerTabs extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;
  const ClankerTabs({Key? key, required this.selectedIndex, required this.onTabSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 390,
        height: 44,
        color: const Color(0xFF181A20),
        child: Row(
          children: [
            const SizedBox(width: 4),
            Icon(Icons.show_chart, color: Color(0xFF8B5CF6), size: 22),
            const SizedBox(width: 6),
            Text('Clanker', style: TextStyle(color: Color(0xFF8B5CF6), fontWeight: FontWeight.w700, fontSize: 16)),
            const Icon(Icons.keyboard_arrow_down, color: Color(0xFFB0B3BC), size: 18),
            const SizedBox(width: 8),
            Text('Virtuals', style: TextStyle(color: Color(0xFFB0B3BC), fontWeight: FontWeight.w500, fontSize: 15)),
            const SizedBox(width: 16),
            GestureDetector(
              onTap: () => onTabSelected(0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: selectedIndex == 0 ? const Color(0xFF23262F) : Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text('热门', style: TextStyle(color: selectedIndex == 0 ? Colors.white : const Color(0xFFB0B3BC), fontWeight: FontWeight.w600, fontSize: 15)),
              ),
            ),
            const SizedBox(width: 8),
            GestureDetector(
              onTap: () => onTabSelected(1),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: selectedIndex == 1 ? const Color(0xFF23262F) : Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text('新币', style: TextStyle(color: selectedIndex == 1 ? Colors.white : const Color(0xFFB0B3BC), fontWeight: FontWeight.w600, fontSize: 15)),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 