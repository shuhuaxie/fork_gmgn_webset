import 'package:flutter/material.dart';

class TopNavBar extends StatelessWidget {
  final VoidCallback? onLogin;
  final VoidCallback? onRegister;
  const TopNavBar({Key? key, this.onLogin, this.onRegister}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 390,
        height: 56,
        color: const Color(0xFF181A20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 青蛙头像
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://img.gmgn.app/frog.png', // 可替换为本地图片
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 8),
            // Base链选择
            Container(
              height: 32,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: const Color(0xFF23262F),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: const [
                  Icon(Icons.radio_button_checked, color: Color(0xFF3772FF), size: 18),
                  SizedBox(width: 2),
                  Text('Base', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600)),
                  Icon(Icons.keyboard_arrow_down, color: Color(0xFFB0B3BC), size: 18),
                ],
              ),
            ),
            const SizedBox(width: 8),
            // 搜索icon
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: const Color(0xFF23262F),
                borderRadius: BorderRadius.circular(8),
              ),
              child: IconButton(
                icon: const Icon(Icons.search, color: Color(0xFFB0B3BC), size: 20),
                onPressed: () {},
                padding: EdgeInsets.zero,
                splashRadius: 20,
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
                icon: const Icon(Icons.settings, color: Color(0xFFB0B3BC), size: 20),
                onPressed: () {},
                padding: EdgeInsets.zero,
                splashRadius: 20,
              ),
            ),
            const SizedBox(width: 16),
            // 注册按钮
            SizedBox(
              height: 40,
              child: TextButton(
                onPressed: onRegister,
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF23262F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  minimumSize: const Size(0, 40),
                ),
                child: const Text(
                  '注册',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            // 登录按钮
            SizedBox(
              height: 40,
              child: TextButton(
                onPressed: onLogin,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  minimumSize: const Size(0, 40),
                ),
                child: const Text(
                  '登录',
                  style: TextStyle(
                    color: Color(0xFF23262F),
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 