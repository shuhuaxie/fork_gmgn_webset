import 'package:flutter/material.dart';

/// K线图时间tab行（5m 1h），左对齐，像素级还原
class TokenDashboardChartTimeTabs extends StatefulWidget {
  const TokenDashboardChartTimeTabs({super.key});

  @override
  State<TokenDashboardChartTimeTabs> createState() => _TokenDashboardChartTimeTabsState();
}

class _TokenDashboardChartTimeTabsState extends State<TokenDashboardChartTimeTabs> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Row(
              children: [
                _TimeTabBtn('5m', selected: false, value: '-0.22%'),
                const SizedBox(width: 8),
                _TimeTabBtn('1h', selected: false, value: '-1.07%'),
                const SizedBox(width: 8),
                _TimeTabBtn('6h', selected: true, value: '+0.68%'),
                const SizedBox(width: 8),
                _TimeTabBtn('24h', selected: false, value: '+0.24%'),
              ],
            ),
          );
  }
} 

class _TimeTabBtn extends StatelessWidget {
  final String text;
  final bool selected;
  final String value;
  const _TimeTabBtn(this.text, {this.selected = false, this.value = ''});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFF23262F) : const Color(0xFF181A20),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Text(text, style: TextStyle(color: selected ? Colors.white : const Color(0xFFB0B3BC), fontWeight: FontWeight.w700, fontSize: 13)),
          if (value.isNotEmpty) ...[
            const SizedBox(width: 4),
            Text(value, style: TextStyle(color: selected ? Color(0xFF22C55E) : Color(0xFFB0B3BC), fontSize: 12)),
          ]
        ],
      ),
    );
  }
}