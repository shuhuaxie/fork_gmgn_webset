import 'package:flutter/material.dart';

class FilterBar extends StatelessWidget {
  const FilterBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 390,
        height: 44,
        color: const Color(0xFF181A20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 过滤Devs按钮
            Container(
              height: 32,
              padding: const EdgeInsets.symmetric(horizontal: 14),
              decoration: BoxDecoration(
                color: const Color(0xFF23262F),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: const [
                  Icon(Icons.cloud, color: Color(0xFFB0B3BC), size: 18),
                  SizedBox(width: 6),
                  Text('过滤Devs', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 14, fontWeight: FontWeight.w500)),
                  Icon(Icons.keyboard_arrow_right, color: Color(0xFFB0B3BC), size: 18),
                ],
              ),
            ),
            const SizedBox(width: 8),
            // 筛选按钮
            Container(
              height: 32,
              padding: const EdgeInsets.symmetric(horizontal: 14),
              decoration: BoxDecoration(
                color: const Color(0xFF23262F),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: const [
                  Icon(Icons.tune, color: Color(0xFFB0B3BC), size: 18),
                  SizedBox(width: 6),
                  Text('筛选', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 14, fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            const Spacer(),
            // ETH图标和0
            Container(
              height: 32,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: const Color(0xFF23262F),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: const [
                  Icon(Icons.currency_bitcoin, color: Color(0xFFB0B3BC), size: 18),
                  SizedBox(width: 4),
                  Text('0', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 14, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            const SizedBox(width: 8),
            // P1下拉
            Container(
              height: 32,
              padding: const EdgeInsets.symmetric(horizontal: 14),
              decoration: BoxDecoration(
                color: const Color(0xFF23262F),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: const [
                  Text('P1', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 14, fontWeight: FontWeight.w600)),
                  Icon(Icons.keyboard_arrow_down, color: Color(0xFFB0B3BC), size: 18),
                ],
              ),
            ),
            const SizedBox(width: 8),
            // 设置icon
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: const Color(0xFF23262F),
                borderRadius: BorderRadius.circular(8),
              ),
              child: IconButton(
                icon: const Icon(Icons.settings, color: Color(0xFFB0B3BC), size: 18),
                onPressed: () {},
                padding: EdgeInsets.zero,
                splashRadius: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
} 