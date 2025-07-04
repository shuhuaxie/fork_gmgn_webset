import 'package:flutter/material.dart';

class TokenDetailChartTopRuler extends StatelessWidget {
  const TokenDetailChartTopRuler({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          Text('0.13695', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 12)),
          SizedBox(height: 24),
          Text('0.13', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 12)),
          SizedBox(height: 24),
          Text('0.12', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 12)),
          SizedBox(height: 24),
          Text('0.11', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 12)),
          SizedBox(height: 24),
          Text('0.10', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 12)),
          SizedBox(height: 24),
          Text('0.09', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 12)),
          SizedBox(height: 24),
          Text('0.08', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 12)),
        ],
      ),
    );
  }
} 