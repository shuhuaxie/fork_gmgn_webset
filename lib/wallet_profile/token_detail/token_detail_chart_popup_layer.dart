import 'package:flutter/material.dart';

class TokenDetailChartPopupLayer extends StatelessWidget {
  const TokenDetailChartPopupLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 160,
      top: 30,
      child: Container(
        width: 140,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: const Color(0xFF181A20),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Sell', style: TextStyle(color: Color(0xFFFF6F91), fontWeight: FontWeight.w700, fontSize: 15)),
            const SizedBox(height: 4),
            const Text('06/25 00:00', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13)),
            const SizedBox(height: 2),
            const Text('Total: \$1,350.72', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13)),
            const SizedBox(height: 2),
            const Text('Amount: 12.79K', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13)),
            const SizedBox(height: 2),
            const Text('Price: \$0.10557', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13)),
          ],
        ),
      ),
    );
  }
} 