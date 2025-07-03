import 'package:flutter/material.dart';

/// 持有人表头（宽520，高40，背景#181A20，分割线#23262F，字号13，颜色#B0B3BC）
class TokenDashboardHolderTableHeader extends StatelessWidget {
  const TokenDashboardHolderTableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 520,
          height: 40,
          color: const Color(0xFF181A20),
          child: Row(
            children: const [
              _HeaderCell('持有人', flex: 3),
              _HeaderCell('持仓占比%', flex: 2),
              _HeaderCell('ETH余额', flex: 2),
              _HeaderCell('操作', flex: 1),
            ],
          ),
        ),
        Container(
          width: 520,
          height: 1,
          color: const Color(0xFF23262F),
        ),
      ],
    );
  }
}

class _HeaderCell extends StatelessWidget {
  final String text;
  final int flex;
  const _HeaderCell(this.text, {this.flex = 1});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Text(
          text,
          style: const TextStyle(color: Color(0xFFB0B3BC), fontSize: 13, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
} 