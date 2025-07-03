import 'package:flutter/material.dart';

class WalletProfileTabs extends StatelessWidget {
  const WalletProfileTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return 
        // 原有主Tab和时间Tab
        Container(
          width: MediaQuery.of(context).size.width,
          height: 36,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _TabBtn('7D PnL', selected: true, fontSize: 13, height: 26, horizontal: 10),
              const SizedBox(width: 4),
              _TabBtn('利润', fontSize: 13, height: 26, horizontal: 10),
              const SizedBox(width: 4),
              _TabBtn('盈亏分布', fontSize: 13, height: 26, horizontal: 10),
              const SizedBox(width: 12),
              _TabBtn('1d', small: true, fontSize: 12, height: 22, horizontal: 8),
              const SizedBox(width: 2),
              _TabBtn('7d', selected: true, small: true, fontSize: 12, height: 22, horizontal: 8),
              const SizedBox(width: 2),
              _TabBtn('30d', small: true, fontSize: 12, height: 22, horizontal: 8),
              const SizedBox(width: 2),
              _TabBtn('全部', small: true, fontSize: 12, height: 22, horizontal: 8),
            ],
          ),
    );
  }
}

class _TabBtn extends StatelessWidget {
  final String text;
  final bool selected;
  final bool small;
  final double fontSize;
  final double height;
  final double horizontal;

  const _TabBtn(this.text, {this.selected = false, this.small = false, this.fontSize = 15, this.height = 32, this.horizontal = 18});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.symmetric(horizontal: horizontal),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFF23262F) : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          color: selected ? Colors.white : const Color(0xFFB0B3BC),
          fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
          fontSize: fontSize,
          letterSpacing: 0.1,
        ),
      ),
    );
  }
} 