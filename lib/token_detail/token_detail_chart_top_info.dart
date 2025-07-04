import 'package:flutter/material.dart';

class TokenDetailChartTopInfo extends StatelessWidget {
  const TokenDetailChartTopInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 头像
          CircleAvatar(
            radius: 12,
            backgroundImage: AssetImage('assets/logo.png'),
          ),
          const SizedBox(width: 8),
          // 地址
          const Text('0xd92b05931498e0df3da9277ab82d6b668c5604b9', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500)),
          const SizedBox(width: 4),
          // 编辑icon
          Icon(Icons.edit, color: Color(0xFF8E929D), size: 16),
          const SizedBox(width: 4),
          // 复制icon
          Icon(Icons.copy, color: Color(0xFF8E929D), size: 16),
          const SizedBox(width: 4),
          // 收藏icon
          Icon(Icons.favorite_border, color: Color(0xFF8E929D), size: 16),
          const SizedBox(width: 4),
          // 关注icon
          Icon(Icons.visibility_outlined, color: Color(0xFF8E929D), size: 16),
          const SizedBox(width: 4),
          // 金色icon
          Icon(Icons.emoji_events, color: Color(0xFFFFC700), size: 16),
        ],
      ),
    );
  }
} 