import 'package:flutter/material.dart';

class WalletProfileTable extends StatelessWidget {
  const WalletProfileTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 表头
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          color: const Color(0xFF181A20),
          child: Row(
            children: const [
              Expanded(flex: 2, child: Text('币种 / 最后活跃', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13))),
              Expanded(flex: 2, child: Text('未实现利润', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13))),
              Expanded(flex: 2, child: Text('已实现利润', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13))),
              Expanded(flex: 2, child: Text('总利润', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13))),
            ],
          ),
        ),
        // 示例数据行
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          color: const Color(0xFF23262F),
          child: Row(
            children: const [
              Expanded(flex: 2, child: Text('BTC', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700))),
              Expanded(flex: 2, child: Text('\$40,000', style: TextStyle(color: Color(0xFFB0B3BC)))),
              Expanded(flex: 2, child: Text('持有', style: TextStyle(color: Color(0xFF00C076), fontWeight: FontWeight.w700))),
              Expanded(flex: 2, child: Text('\$40,000', style: TextStyle(color: Color(0xFFB0B3BC)))),
            ],
          ),
        ),
      ],
    );
  }
} 