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

    return Container(
      width: 390,
      decoration: BoxDecoration(
        color: const Color(0xFF23262F),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          // 表头
          Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(
              color: Color(0xFF181A20),
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: Row(
              children: const [
                Expanded(flex: 3, child: Text('币种 / 最后活跃', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13, fontWeight: FontWeight.w600))),
                Expanded(flex: 2, child: Text('未实现利润', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13, fontWeight: FontWeight.w600))),
                Expanded(flex: 2, child: Text('已实现利润', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13, fontWeight: FontWeight.w600))),
                Expanded(flex: 2, child: Text('总利润', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13, fontWeight: FontWeight.w600))),
              ],
            ),
          ),
          // 分割线
          Container(
            height: 1,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            color: const Color(0xFF23262F),
          ),
          // 数据行
          ...rows.map((row) => _WalletProfileTableRow(row: row)).toList(),
        ],
      ),
    );
  }
}

class _WalletProfileTableRow extends StatelessWidget {
  final Map row;
  const _WalletProfileTableRow({required this.row});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        color: Color(0xFF23262F),
      ),
      child: Row(
        children: [
          // 币种+活跃
          Expanded(
            flex: 3,
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
          ),
          Expanded(flex: 2, child: Text(row['unrealized'], style: TextStyle(color: row['unrealizedColor'], fontWeight: FontWeight.w600, fontSize: 14))),
          Expanded(flex: 2, child: Text(row['realized'], style: TextStyle(color: row['realizedColor'], fontWeight: FontWeight.w600, fontSize: 14))),
          Expanded(flex: 2, child: Text(row['total'], style: TextStyle(color: row['totalColor'], fontWeight: FontWeight.w600, fontSize: 14))),
        ],
      ),
    );
  }
} 