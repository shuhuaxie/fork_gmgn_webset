import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// K线图标题行（TOSHI），左对齐，像素级还原
class TokenDashboardChartHeader extends StatelessWidget {
  const TokenDashboardChartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 星标按钮
          IconButton(
            icon: Icon(Icons.star_border, color: const Color(0xFF8E929D), size: 22),
            onPressed: () {},
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
          ),
          const SizedBox(width: 8),
          // 头像+链logo
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFF22C5FF), width: 2),
                ),
                child: ClipOval(
                  child: Image.asset('assets/logo.png', fit: BoxFit.cover),
                ),
              ),
              Positioned(
                bottom: -4,
                left: 0,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: const Color(0xFF23262F),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: SvgPicture.asset('assets/logo_small2.svg'),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 12),
          // TOSHI和第二行
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text('TOSHI', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18)),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Text('633d ', style: TextStyle(color: Color(0xFF8E929D), fontSize: 13)),
                    Text('加池子', style: TextStyle(color: Color(0xFF22C5FF), fontSize: 13, fontWeight: FontWeight.w600)),
                    const SizedBox(width: 4),
                    const Text('0xac1...2b4', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13)),
                    const SizedBox(width: 4),
                    Icon(Icons.copy, color: Color(0xFF8E929D), size: 16),
                    const SizedBox(width: 4),
                    Icon(Icons.share, color: Color(0xFF8E929D), size: 16),
                  ],
                ),
              ],
            ),
          ),
          // 价格
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('240.0004726', style: TextStyle(color: Color(0xFF22C55E), fontWeight: FontWeight.w700, fontSize: 22)),
              const SizedBox(height: 16),
            ],
          ),
        ],
      ),
    );
  }
} 