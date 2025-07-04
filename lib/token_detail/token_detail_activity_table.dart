import 'package:flutter/material.dart';
import 'token_detail_activity_table_header.dart';
import 'token_detail_activity_table_row.dart';

/// 明细表区（宽520，背景#23262F，圆角16，表头高40，行高48，横向可滚动）
class TokenDetailActivityTable extends StatelessWidget {
  const TokenDetailActivityTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF181A20),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const TokenDetailActivityTableHeader(),
          // mock多行
          const TokenDetailActivityTableRow(isSell: true, total: '\$1,350.72', usd: '12.79K', amount: '12.79K', price: '\$0.10556', gas: '\$0.032'),
          const TokenDetailActivityTableRow(isSell: false, total: '\$2,000.00', usd: '20.00K', amount: '20.00K', price: '\$0.12000', gas: '\$0.040'),
          const TokenDetailActivityTableRow(isSell: true, total: '\$800.00', usd: '8.00K', amount: '8.00K', price: '\$0.10000', gas: '\$0.025'),
        ],
      ),
    );
  }
}

/// 表头单元格（高40，字号13，颜色#B0B3BC，背景#181A20）
class _TableHeaderCell extends StatelessWidget {
  final String text;
  final bool isFirst;
  const _TableHeaderCell(this.text, {this.isFirst = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 40,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: isFirst ? 16 : 8),
      decoration: const BoxDecoration(
        color: Color(0xFF181A20),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Color(0xFFB0B3BC), fontSize: 13, fontWeight: FontWeight.w600),
      ),
    );
  }
}

/// 明细表每一行（高48，字号14，颜色、背景、圆角、间距等严格对齐截图）
class _TokenDetailTableRow extends StatelessWidget {
  final Map row;
  const _TokenDetailTableRow({required this.row});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _TypeCell(row['type'] as String, color: row['typeColor'] as Color),
        _TableCell(row['amount'] as String),
        _TableCell(row['qty'] as String),
        _TableCell(row['price'] as String),
        _TableCell(row['gas'] as String),
      ],
    );
  }
}

/// 类型cell（宽120，圆角8，背景色typeColor透明度0.12，字号14，颜色typeColor）
class _TypeCell extends StatelessWidget {
  final String text;
  final Color color;
  const _TypeCell(this.text, {required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 48,
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          color: color.withOpacity(0.12),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          text,
          style: TextStyle(color: color, fontWeight: FontWeight.w700, fontSize: 14),
        ),
      ),
    );
  }
}

/// 普通cell（宽120，字号14，颜色#B0B3BC，左对齐）
class _TableCell extends StatelessWidget {
  final String text;
  const _TableCell(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 48,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Text(
        text,
        style: const TextStyle(color: Color(0xFFB0B3BC), fontSize: 14, fontWeight: FontWeight.w600),
      ),
    );
  }
} 