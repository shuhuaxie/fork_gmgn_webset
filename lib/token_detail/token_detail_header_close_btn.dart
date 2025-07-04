import 'package:flutter/material.dart';

class TokenDetailHeaderCloseBtn extends StatelessWidget {
  final VoidCallback? onPressed;
  const TokenDetailHeaderCloseBtn({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.close, color: Color(0xFFB0B3BC), size: 24),
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
    );
  }
} 