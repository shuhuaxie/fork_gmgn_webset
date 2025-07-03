import 'package:flutter/material.dart';

class TokenShareDialog extends StatelessWidget {
  const TokenShareDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.all(16),
      child: Container(
        width: 420,
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 顶部卡片
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                color: const Color(0xFF181A20),
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/logo.png'), // 用你的背景图替换
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Color(0xCC181A20), BlendMode.darken),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 20,
                    top: 18,
                    child: Row(
                      children: const [
                        Icon(Icons.emoji_emotions, color: Color(0xFF7CF7D6), size: 28),
                        SizedBox(width: 8),
                        Text('GMGN', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20)),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 54,
                    child: Row(
                      children: const [
                        CircleAvatar(radius: 12, backgroundColor: Colors.black, child: Icon(Icons.currency_bitcoin, color: Colors.white, size: 16)),
                        SizedBox(width: 8),
                        Text('BTC', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16)),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 18,
                    child: Row(
                      children: const [
                        Icon(Icons.close, color: Color(0xFFB0B3BC), size: 20),
                        SizedBox(width: 8),
                        Text('gmgn.ai', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13)),
                      ],
                    ),
                  ),
                  // 其它内容可继续补充
                ],
              ),
            ),
            // 图片选择区
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
              child: Row(
                children: [
                  _ImageThumb(selected: true, image: 'assets/logo.png'),
                  const SizedBox(width: 12),
                  _ImageThumb(selected: false, image: 'https://img.gmgn.app/sample.jpg'),
                ],
              ),
            ),
            // 操作按钮区
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
              child: Wrap(
                spacing: 12,
                runSpacing: 10,
                children: [
                  _ActionBtn(icon: Icons.tune, label: '自定义'),
                  _ActionBtn(icon: Icons.attach_money, label: 'USD'),
                  _ActionBtn(icon: Icons.refresh, label: '重置'),
                  _ActionBtn(icon: Icons.close, label: '分享到 Twitter'),
                  _ActionBtn(icon: Icons.download, label: '下载'),
                  _ActionBtn(icon: Icons.copy, label: '复制'),
                ],
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}

class _ImageThumb extends StatelessWidget {
  final bool selected;
  final String image;
  const _ImageThumb({required this.selected, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 72,
      decoration: BoxDecoration(
        border: Border.all(color: selected ? const Color(0xFF7CF7D6) : Colors.transparent, width: 2),
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: image.startsWith('http') ? NetworkImage(image) : AssetImage(image) as ImageProvider,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _ActionBtn extends StatelessWidget {
  final IconData icon;
  final String label;
  const _ActionBtn({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(icon, color: const Color(0xFFB0B3BC), size: 20),
      label: Text(label, style: const TextStyle(color: Color(0xFFB0B3BC), fontSize: 15, fontWeight: FontWeight.w600)),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF23262F),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        elevation: 0,
      ),
    );
  }
} 