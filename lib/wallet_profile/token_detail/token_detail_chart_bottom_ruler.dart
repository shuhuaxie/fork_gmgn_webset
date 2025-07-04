import 'package:flutter/material.dart';

class TokenDetailChartBottomRuler extends StatelessWidget {
  const TokenDetailChartBottomRuler({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('06/04', style: TextStyle(color: Color(0xFF8E929D), fontSize: 12)),
          Text('06/08', style: TextStyle(color: Color(0xFF8E929D), fontSize: 12)),
          Text('06/12', style: TextStyle(color: Color(0xFF8E929D), fontSize: 12)),
          Text('06/16', style: TextStyle(color: Color(0xFF8E929D), fontSize: 12)),
          Text('06/21', style: TextStyle(color: Color(0xFF8E929D), fontSize: 12)),
          Text('06/25', style: TextStyle(color: Color(0xFF8E929D), fontSize: 12)),
          Text('06/29', style: TextStyle(color: Color(0xFF8E929D), fontSize: 12)),
          Text('07/03', style: TextStyle(color: Color(0xFF8E929D), fontSize: 12)),
        ],
      ),
    );
  }
} 