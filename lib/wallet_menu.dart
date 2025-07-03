import 'package:flutter/material.dart';

class WalletMenu extends StatelessWidget {
  final VoidCallback? onWalletTap;
  const WalletMenu({Key? key, this.onWalletTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        width: 280,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: const Color(0xFF181A20),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.18),
              blurRadius: 24,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _MenuItem(
              icon: Icons.wallet,
              text: '我的钱包',
              onTap: onWalletTap,
            ),
            _MenuItem(
              icon: Icons.verified_user,
              text: '账户安全',
              trailing: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: const Color(0xFF23262F),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('未绑定', style: TextStyle(color: Color(0xFFFF5B5B), fontSize: 12, fontWeight: FontWeight.w600)),
              ),
            ),
            _MenuItem(
              icon: Icons.reply,
              text: '邀请返佣',
            ),
            const SizedBox(height: 8),
            // 交易赛
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Container(
                height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: const LinearGradient(
                    colors: [Color(0xFF4ADE80), Color(0xFF60A5FA)],
                  ),
                ),
                child: Row(
                  children: const [
                    SizedBox(width: 12),
                    Icon(Icons.emoji_events, color: Colors.white, size: 22),
                    SizedBox(width: 10),
                    Text('交易赛(S6)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 15)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            _MenuItem(icon: Icons.upload, text: '提现'),
            _MenuItem(icon: Icons.swap_horiz, text: '转换 WETH→ETH'),
            _MenuItem(icon: Icons.link, text: '绑定Twitter'),
            _MenuItem(icon: Icons.link_off, text: '断开连接'),
          ],
        ),
      ),
    );
  }
}

class _MenuItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Widget? trailing;
  final VoidCallback? onTap;
  const _MenuItem({required this.icon, required this.text, this.trailing, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          children: [
            Icon(icon, color: const Color(0xFFB0B3BC), size: 22),
            const SizedBox(width: 14),
            Expanded(
              child: Text(text, style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500)),
            ),
            if (trailing != null) trailing!,
          ],
        ),
      ),
    );
  }
} 