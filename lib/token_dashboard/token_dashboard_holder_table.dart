import 'package:flutter/material.dart';

/// 明细表（宽520，背景#23262F，圆角16，表头高40，行高48，横向可滚动）
class TokenDashboardHolderTable extends StatelessWidget {
  const TokenDashboardHolderTable({super.key});

  @override
  Widget build(BuildContext context) {
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
              children: const [
                _TableHeaderCell('持有人'),
                _TableHeaderCell('持仓占比%'),
                _TableHeaderCell('ETH余额'),
                _TableHeaderCell('操作'),
              ],
            ),
            Container(
              height: 1,
              width: 480,
              color: const Color(0xFF23262F),
            ),
            // 数据行（可拆分为单独cell）
            _HolderRow(),
            _HolderRow(),
            _HolderRow(),
          ],
        ),
      ),
    );
  }
}

class _TableHeaderCell extends StatelessWidget {
  final String text;
  const _TableHeaderCell(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 40,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 8),
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

class _HolderRow extends StatelessWidget {
  const _HolderRow();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        _HolderCell(),
        _HolderPercentCell(),
        _HolderEthCell(),
        _HolderActionCell(),
      ],
    );
  }
}

class _HolderCell extends StatelessWidget {
  const _HolderCell();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 48,
      child: Row(
        children: [
          CircleAvatar(radius: 16, backgroundColor: Color(0xFF23262F)),
          SizedBox(width: 8),
          Text('0xd34...969', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 15)),
        ],
      ),
    );
  }
}

class _HolderPercentCell extends StatelessWidget {
  const _HolderPercentCell();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 48,
      child: Center(child: Text('0.2%', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 14, fontWeight: FontWeight.w600))),
    );
  }
}

class _HolderEthCell extends StatelessWidget {
  const _HolderEthCell();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 48,
      child: Center(child: Text('0.223', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 14, fontWeight: FontWeight.w600))),
    );
  }
}

class _HolderActionCell extends StatelessWidget {
  const _HolderActionCell();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 48,
      child: Center(child: Icon(Icons.more_horiz, color: Color(0xFFB0B3BC), size: 20)),
    );
  }
} 