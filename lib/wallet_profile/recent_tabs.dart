import 'package:flutter/material.dart';

class RecentTabs extends StatelessWidget {
  const RecentTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      child: Row(
        children: [
          _RecentTab('最近盈亏', selected: true),
          const SizedBox(width: 8),
          _RecentTab('持有代币'),
          const SizedBox(width: 8),
          _RecentTab('活动'),
          const SizedBox(width: 8),
          _RecentTab('部署代币'),
        ],
      ),
    );
  }
}

class _RecentTab extends StatelessWidget {
  final String text;
  final bool selected;
  const _RecentTab(this.text, {this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
} 