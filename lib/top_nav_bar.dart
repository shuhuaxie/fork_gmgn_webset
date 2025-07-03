import 'package:flutter/material.dart';
import 'global.dart';
import 'wallet_menu.dart';

class TopNavBar extends StatelessWidget {
  final VoidCallback? onLogin;
  final VoidCallback? onRegister;
  final VoidCallback? onWalletProfile;
  const TopNavBar({Key? key, this.onLogin, this.onRegister, this.onWalletProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 390,
        height: 56,
        color: const Color(0xFF181A20),
        child: ValueListenableBuilder<bool>(
          valueListenable: Global.isLoggedIn,
          builder: (context, loggedIn, _) {
            return Row(
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
                      'https://img.gmgn.app/frog.png',
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
                  child: const IconButton(
                    icon: Icon(Icons.search, color: Color(0xFFB0B3BC), size: 20),
                    onPressed: null,
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
                  child: const IconButton(
                    icon: Icon(Icons.settings, color: Color(0xFFB0B3BC), size: 20),
                    onPressed: null,
                    padding: EdgeInsets.zero,
                    splashRadius: 20,
                  ),
                ),
                const SizedBox(width: 16),
                // 右侧区域：未登录显示注册/登录，已登录显示钱包
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: loggedIn
                        ? _WalletMenuButton(onWalletProfile: onWalletProfile)
                        : Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
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
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _WalletMenuButton extends StatefulWidget {
  final VoidCallback? onWalletProfile;
  const _WalletMenuButton({Key? key, this.onWalletProfile}) : super(key: key);

  @override
  State<_WalletMenuButton> createState() => _WalletMenuButtonState();
}

class _WalletMenuButtonState extends State<_WalletMenuButton> {
  OverlayEntry? _overlayEntry;
  final LayerLink _layerLink = LayerLink();
  bool _menuOpen = false;

  void _showMenu() {
    _overlayEntry = OverlayEntry(
      builder: (context) => Stack(
        children: [
          // 全屏透明遮罩
          Positioned.fill(
            child: GestureDetector(
              onTap: _hideMenu,
              behavior: HitTestBehavior.translucent,
              child: Container(color: Colors.transparent),
            ),
          ),
          // WalletMenu浮层
          Positioned(
            width: 280,
            child: CompositedTransformFollower(
              link: _layerLink,
              showWhenUnlinked: false,
              offset: const Offset(-180, 56),
              child: WalletMenu(
                onWalletTap: () {
                  _hideMenu();
                  if (widget.onWalletProfile != null) widget.onWalletProfile!();
                },
              ),
            ),
          ),
        ],
      ),
    );
    Overlay.of(context, rootOverlay: true).insert(_overlayEntry!);
    setState(() => _menuOpen = true);
  }

  void _hideMenu() {
    _overlayEntry?.remove();
    _overlayEntry = null;
    setState(() => _menuOpen = false);
  }

  @override
  void dispose() {
    _hideMenu();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: GestureDetector(
        onTap: () {
          if (_menuOpen) {
            _hideMenu();
          } else {
            _showMenu();
          }
        },
        child: Container(
          height: 44,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: const Color(0xFF23262F),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.wallet, color: Color(0xFFB0B3BC), size: 22),
              const SizedBox(width: 8),
              const Icon(Icons.currency_bitcoin, color: Color(0xFF00C2FF), size: 18),
              const SizedBox(width: 2),
              const Text('0', style: TextStyle(color: Color(0xFF00C2FF), fontSize: 16, fontWeight: FontWeight.w600)),
              const SizedBox(width: 8),
              Icon(_menuOpen ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down, color: const Color(0xFFB0B3BC), size: 22),
            ],
          ),
        ),
      ),
    );
  }
} 