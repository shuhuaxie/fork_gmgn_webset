import 'package:flutter/material.dart';

/// 明细表区（宽520，背景#23262F，圆角16，表头高40，行高48，横向可滚动）
class TokenDetailActivityTable extends StatelessWidget {
  const TokenDetailActivityTable({super.key});

  @override
  Widget build(BuildContext context) {
    final columns = ['类型', '总额 USD', '数量', '价格与', 'Gas费用'];
    final rows = [
      {'type': '转出', 'typeColor': Color(0xFFB26AFF), 'amount': '--', 'qty': '454.11', 'price': '--', 'gas': '--'},
      {'type': '买入', 'typeColor': Color(0xFF22C55E), 'amount': '\$0.012', 'qty': '45.41K', 'price': '\$0.625963', 'gas': '\$0.003'},
      {'type': '卖出', 'typeColor': Color(0xFFFF5B5B), 'amount': '\$0.852', 'qty': '3.5M', 'price': '\$0.624043', 'gas': '\$0.001'},
      {'type': '转出', 'typeColor': Color(0xFFB26AFF), 'amount': '--', 'qty': '23.83K', 'price': '--', 'gas': '--'},
      {'type': '买入', 'typeColor': Color(0xFF22C55E), 'amount': '\$0.585', 'qty': '2.4M', 'price': '\$0.624560', 'gas': '\$0.002'},
    ];
    return Container(
      width: 520,
      decoration: BoxDecoration(
        color: const Color(0xFF23262F),
        borderRadius: BorderRadius.circular(16),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            // 表头
            Row(
              children: List.generate(columns.length, (i) => _TableHeaderCell(columns[i], isFirst: i == 0)),
            ),
            Container(
              height: 1,
              width: columns.length * 120,
              color: const Color(0xFF23262F),
            ),
            // 数据行
            ...rows.map((row) => _TokenDetailTableRow(row: row)).toList(),
          ],
        ),
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