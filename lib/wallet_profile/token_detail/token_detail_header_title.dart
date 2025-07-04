import 'package:flutter/material.dart';

class TokenDetailHeaderTitle extends StatelessWidget {
  const TokenDetailHeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text('TIBBIR ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18)),
            const Text('4\$0.09013', style: TextStyle(color: Color(0xFF22C55E), fontWeight: FontWeight.w700, fontSize: 18)),
          ],
        ),
        const SizedBox(height: 2),
        const Text('Market Cap \$90.1M', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13)),
      ],
    );
  }
} 