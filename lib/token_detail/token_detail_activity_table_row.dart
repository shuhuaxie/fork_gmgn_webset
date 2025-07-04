import 'package:flutter/material.dart';

class TokenDetailActivityTableRow extends StatelessWidget {
  final bool isSell;
  final String total;
  final String usd;
  final String amount;
  final String price;
  final String gas;
  const TokenDetailActivityTableRow({
    super.key,
    this.isSell = true,
    this.total = '\$1,350.72',
    this.usd = '12.79K',
    this.amount = '12.79K',
    this.price = '\$0.10556',
    this.gas = '\$0.032',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 0),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF23262F),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                isSell ? '卖出' : '买入',
                style: TextStyle(
                  color: isSell ? const Color(0xFFFF6F91) : const Color(0xFF22C55E),
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(total, style: const TextStyle(color: Colors.white, fontSize: 13), textAlign: TextAlign.center),
          ),
          Expanded(
            flex: 2,
            child: Text(usd, style: const TextStyle(color: Colors.white, fontSize: 13), textAlign: TextAlign.center),
          ),
          Expanded(
            flex: 2,
            child: Text(amount, style: const TextStyle(color: Colors.white, fontSize: 13), textAlign: TextAlign.center),
          ),
          Expanded(
            flex: 2,
            child: Text(price, style: const TextStyle(color: Color(0xFFFF6F91), fontSize: 13), textAlign: TextAlign.center),
          ),
          Expanded(
            flex: 2,
            child: Text(gas, style: const TextStyle(color: Color(0xFFB0B3BC), fontSize: 13), textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
} 