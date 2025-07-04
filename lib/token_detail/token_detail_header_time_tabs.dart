import 'package:flutter/material.dart';

class TokenDetailHeaderTimeTabs extends StatelessWidget {
  final int selectedIndex;
  final void Function(int)? onTabSelected;
  const TokenDetailHeaderTimeTabs({super.key, this.selectedIndex = 1, this.onTabSelected});

  @override
  Widget build(BuildContext context) {
    final tabs = ['4h', '1d', '30d'];
    return Row(
      children: List.generate(tabs.length, (i) => Padding(
        padding: EdgeInsets.only(left: i == 0 ? 0 : 8),
        child: GestureDetector(
          onTap: onTabSelected == null ? null : () => onTabSelected!(i),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: selectedIndex == i ? const Color(0xFF23262F) : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              tabs[i],
              style: TextStyle(
                color: selectedIndex == i ? Colors.white : const Color(0xFFB0B3BC),
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ),
          ),
        ),
      )),
    );
  }
} 