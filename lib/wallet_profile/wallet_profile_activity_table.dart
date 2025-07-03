import 'package:flutter/material.dart';
import 'package:untitled1/wallet_profile/token_share_dialog.dart';
import 'token_detail/token_detail_page.dart';

class WalletProfileActivityTable extends StatelessWidget {
  const WalletProfileActivityTable({Key? key}) : super(key: key);

  void _goToDetail(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const TokenDetailPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final rows = [
      {
        'type': '买入',
        'typeColor': Color(0xFF22C55E),
        'icon': Icons.currency_bitcoin,
        'name': 'BLK',
        'amount': '\$0.012',
        'qty': '45.41K',
        'price': '\$0.625963',
        'profit': '--',
        'time': '2h以前',
        'gas': '\$0.003',
      },
      {
        'type': '买入',
        'typeColor': Color(0xFF22C55E),
        'icon': Icons.currency_bitcoin,
        'name': 'FROST',
        'amount': '\$0.122',
        'qty': '3,031.51',
        'price': '\$0.440258',
        'profit': '--',
        'time': '20h以前',
        'gas': '\$0.003',
      },
      {
        'type': '卖出',
        'typeColor': Color(0xFFFF5B5B),
        'icon': Icons.currency_bitcoin,
        'name': 'ALUMINIUM',
        'amount': '\$0.122',
        'qty': '36.9M',
        'price': '\$0.33068',
        'profit': '\$0',
        'time': '20h以前',
        'gas': '\$0.003',
      },
      {
        'type': '买入',
        'typeColor': Color(0xFF22C55E),
        'icon': Icons.currency_bitcoin,
        'name': 'FROST',
        'amount': '\$5.03',
        'qty': '54.39K',
        'price': '\$0.492498',
        'profit': '--',
        'time': '1d以前',
        'gas': '\$0.001',
      },
    ];
    final columns = [
      '类型', '币种', '总额 USD', '数量', '价格与', '利润', '时长', 'Gas费用', '',
    ];
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: const Color(0xFF23262F),
        borderRadius: BorderRadius.circular(16),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Row(
              children: List.generate(columns.length, (i) => _TableHeaderCell(columns[i], isFirst: i == 0)),
            ),
            Container(
              height: 1,
              width: columns.length * 100,
              color: const Color(0xFF23262F),
            ),
            ...rows.map((row) => GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => _goToDetail(context),
              child: Row(
                children: [
                  _TypeCell(row['type'] as String, color: row['typeColor'] as Color),
                  _CoinCell(icon: row['icon'] as IconData, name: row['name'] as String),
                  _TableCell(row['amount'] as String),
                  _TableCell(row['qty'] as String),
                  _TableCell(row['price'] as String),
                  _TableCell(row['profit'] as String, color: row['type'] == '卖出' ? const Color(0xFFFF5B5B) : const Color(0xFF22C55E)),
                  _TableCell(row['time'] as String),
                  _TableCell(row['gas'] as String),
                  _TableCellButton(label: '分享', 
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => const TokenShareDialog(),
                    );
                  }),
                ],
              ),
            )),
          ],
        ),
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
      width: isFirst ? 60 : 100,
      height: 40,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: isFirst ? 8 : 8),
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

class _TypeCell extends StatelessWidget {
  final String text;
  final Color color;
  const _TypeCell(this.text, {required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
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

class _CoinCell extends StatelessWidget {
  final IconData icon;
  final String name;
  const _CoinCell({required this.icon, required this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 48,
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 20),
          const SizedBox(width: 8),
          Text(name, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 15)),
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

class _TableCellButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const _TableCellButton({required this.label, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 48,
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xFF23262F),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(horizontal: 8),
        ),
        child: Text(
          label,
          style: const TextStyle(color: Color(0xFFB0B3BC), fontSize: 14, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
} 