import 'package:flutter/material.dart';

class WalletProfileHeader extends StatelessWidget {
  const WalletProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF23262F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 头像
          CircleAvatar(
            radius: 32,
            backgroundColor: const Color(0xFFF8E9F0),
            backgroundImage: NetworkImage('https://img.gmgn.app/pink.png'),
          ),
          const SizedBox(width: 16),
          // 昵称、地址、icon
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text('0xddc...673', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18)),
                    const SizedBox(width: 4),
                    const Icon(Icons.edit, color: Color(0xFFB0B3BC), size: 18),
                    const SizedBox(width: 4),
                    const Icon(Icons.share, color: Color(0xFFB0B3BC), size: 18),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Text('0xddcc', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 14)),
                    const SizedBox(width: 4),
                    const Icon(Icons.copy, color: Color(0xFFB0B3BC), size: 16),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.emoji_events, color: Color(0xFFFFD700), size: 18),
                    const SizedBox(width: 4),
                    const Icon(Icons.person, color: Color(0xFF7CF7D6), size: 18),
                  ],
                ),
              ],
            ),
          ),
          // 关注按钮
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.person_add_alt, color: Color(0xFF23262F)),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
} 