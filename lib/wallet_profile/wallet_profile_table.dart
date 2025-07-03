import 'package:flutter/material.dart';

class WalletProfileTable extends StatelessWidget {
  const WalletProfileTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // mock 数据
    final rows = [
      {
        'icon': Icons.currency_bitcoin,
        'name': 'BTC',
        'lastActive': '2小时前',
        'unrealized': '-\$1,200.00',
        'realized': '+\$3,000.00',
        'total': '+\$1,800.00',
        'unrealizedColor': Color(0xFFFF5B5B),
        'realizedColor': Color(0xFF00C076),
        'totalColor': Color(0xFF00C076),
      },
      {
        'icon': Icons.currency_bitcoin,
        'name': 'ETH',
        'lastActive': '1天前',
        'unrealized': '+\$800.00',
        'realized': '+\$1,200.00',
        'total': '+\$2,000.00',
        'unrealizedColor': Color(0xFF00C076),
        'realizedColor': Color(0xFF00C076),
        'totalColor': Color(0xFF00C076),
      },
      {
        'icon': Icons.currency_bitcoin,
        'name': 'ARB',
        'lastActive': '3天前',
        'unrealized': '-\$200.00',
        'realized': '-\$100.00',
        'total': '-\$300.00',
        'unrealizedColor': Color(0xFFFF5B5B),
        'realizedColor': Color(0xFFFF5B5B),
        'totalColor': Color(0xFFFF5B5B),
      },
    ];

    final columns = [
      '未实现利润',
      '已实现利润',
      '总利润',
      '余额 USD',
      '持仓%',
      '总买入/平均',
      '总卖出/平均',
      '30D交易数',
      '操作',
    ];

    return Container(
      width: 390,
      decoration: BoxDecoration(
        color: const Color(0xFF23262F),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          // 固定首列
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _TableHeaderCell('币种 / 最后活跃', isFirst: true),
                Container(
                  height: 1,
                  width: 120,
                  margin: const EdgeInsets.symmetric(horizontal: 0),
                  color: const Color(0xFF23262F),
                ),
                ...rows.map((row) => _TableFirstCell(row: row)).toList(),
              ],
            ),
          ),
          // 可滚动部分
          Padding(
            padding: const EdgeInsets.only(left: 120),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: List.generate(columns.length, (i) => _TableHeaderCell(columns[i])),
                  ),
                  Container(
                    height: 1,
                    width: columns.length * 100,
                    color: const Color(0xFF23262F),
                  ),
                  ...rows.map((row) => Row(
                    children: [
                      _TableCell(row['unrealized'] as String, color: row['unrealizedColor'] as Color),
                      _TableCell(row['realized'] as String, color: row['realizedColor'] as Color),
                      _TableCell(row['total'] as String, color: row['totalColor'] as Color),
                      _TableCell('\$0'),
                      _TableCell('100%'),
                      _TableCell('\$0'),
                      _TableCell('\$0'),
                      _TableCell('0/0'),
                      _TableCell('分享'),
                    ],
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TableHeaderCell extends StatelessWidget {
  final String text;
  final bool isFirst;
  const _TableHeaderCell(this.text, {this.isFirst = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: isFirst ? 120 : 100,
      height: 40,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: isFirst ? 16 : 8),
      decoration: isFirst
          ? const BoxDecoration(
              color: Color(0xFF181A20),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(16)),
            )
          : const BoxDecoration(
              color: Color(0xFF181A20),
            ),
      child: Text(
        text,
        style: const TextStyle(color: Color(0xFFB0B3BC), fontSize: 13, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class _TableFirstCell extends StatelessWidget {
  final Map row;
  const _TableFirstCell({required this.row});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Icon(row['icon'], color: Colors.white, size: 20),
          const SizedBox(width: 8),
          Text(row['name'], style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 15)),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: const Color(0xFF181A20),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(row['lastActive'], style: const TextStyle(color: Color(0xFFB0B3BC), fontSize: 11)),
          ),
        ],
      ),
    );
  }
}

class _TableCell extends StatelessWidget {
  final String text;
  final Color? color;
  const _TableCell(this.text, {this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 48,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Text(
        text,
        style: TextStyle(color: color ?? const Color(0xFFB0B3BC), fontSize: 14, fontWeight: FontWeight.w600),
      ),
    );
  }
} 