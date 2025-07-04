import 'package:flutter/material.dart';

class TokenDetailProfitBtn extends StatelessWidget {
  final VoidCallback? onPressed;
  const TokenDetailProfitBtn({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: 220,
          height: 36,
          decoration: BoxDecoration(
            color: const Color(0xFF23262F),
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: Alignment.center,
          child: const Text('资产盈亏', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700)),
        ),
      ),
    );
  }
} 