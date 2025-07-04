import 'package:flutter/material.dart';

class TokenDetailActivityTableHeader extends StatelessWidget {
  const TokenDetailActivityTableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: const BoxDecoration(
        color: Color(0xFF181A20),
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
      ),
      child: Row(
        children: const [
          _HeaderCell('类型', flex: 2),
          _HeaderCell('总额', flex: 2),
          _HeaderCell('USD', flex: 2),
          _HeaderCell('数量', flex: 2),
          _HeaderCell('价格', flex: 2),
          _HeaderCell('Gas费用', flex: 2),
        ],
      ),
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
      child: Text(
        text,
        style: const TextStyle(color: Color(0xFF8E929D), fontSize: 13, fontWeight: FontWeight.w700),
        textAlign: TextAlign.center,
      ),
    );
  }
} 