import 'package:flutter/material.dart';
import 'token_detail_header_token.dart';
import 'token_detail_header_title.dart';
import 'token_detail_header_time_tabs.dart';
import 'token_detail_header_close_btn.dart';

/// 顶部信息区（宽520，高72，左右内边距24，上下内边距16，背景透明）
class TokenDetailHeader extends StatelessWidget {
  const TokenDetailHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 520,
      height: 72,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      color: Colors.transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TokenDetailHeaderToken(),
          const SizedBox(width: 12),
          const TokenDetailHeaderTitle(),
          const Spacer(),
          TokenDetailHeaderTimeTabs(selectedIndex: 2),
          const SizedBox(width: 12),
          TokenDetailHeaderCloseBtn(onPressed: () {}),
        ],
      ),
    );
  }
}

/// 时间TabBar（4h/1d/30d，选中高亮，圆角8，字号14，间距8）
class _TimeTabBar extends StatelessWidget {
  const _TimeTabBar();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _TimeTab('4h', selected: false),
        const SizedBox(width: 8),
        _TimeTab('1d', selected: true),
        const SizedBox(width: 8),
        _TimeTab('30d', selected: false),
      ],
    );
  }
}

class _TimeTab extends StatelessWidget {
  final String text;
  final bool selected;
  const _TimeTab(this.text, {required this.selected});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFF23262F) : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: selected ? Colors.white : const Color(0xFFB0B3BC),
          fontWeight: FontWeight.w700,
          fontSize: 14,
        ),
      ),
    );
  }
} 