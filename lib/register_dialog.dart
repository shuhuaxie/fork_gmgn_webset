import 'package:flutter/material.dart';

class RegisterDialog extends StatelessWidget {
  const RegisterDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color(0xFF181A20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      insetPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: SizedBox(
        width: 400,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    '注册',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close, color: Color(0xFFB0B3BC), size: 28),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Text(
                    '已有账号？',
                    style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 15),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      '去登录',
                      style: TextStyle(color: Color(0xFF7CF7D6), fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text('邮箱', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500)),
              const SizedBox(height: 8),
              TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: '输入邮箱',
                  hintStyle: const TextStyle(color: Color(0xFFB0B3BC)),
                  filled: true,
                  fillColor: const Color(0xFF23262F),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                ),
              ),
              const SizedBox(height: 18),
              const Text('邀请码 (选填)', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500)),
              const SizedBox(height: 8),
              TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: '邀请码',
                  hintStyle: const TextStyle(color: Color(0xFFB0B3BC)),
                  filled: true,
                  fillColor: const Color(0xFF23262F),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                '邀请码绑定后不可修改，请保证输入正确的邀请码',
                style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 12),
              ),
              const SizedBox(height: 18),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF7CF7D6),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    '注册',
                    style: TextStyle(
                      color: Color(0xFF181A20),
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: const [
                  Expanded(child: Divider(color: Color(0xFF23262F), thickness: 1)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text('其它注册方式', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 14)),
                  ),
                  Expanded(child: Divider(color: Color(0xFF23262F), thickness: 1)),
                ],
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _ThirdPartyIcon(
                    icon: Icons.send, // 可换为Telegram图标
                    label: 'Telegram',
                  ),
                  _ThirdPartyIcon(
                    icon: Icons.account_circle, // 占位Phantom图标
                    label: 'Phantom',
                  ),
                ],
              ),
              const SizedBox(height: 18),
              Center(
                child: Text(
                  '服务条款  |  隐私政策',
                  style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 13),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ThirdPartyIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  const _ThirdPartyIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: const Color(0xFF23262F),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(icon, color: const Color(0xFF7CF7D6), size: 32),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(color: Color(0xFFB0B3BC), fontSize: 13)),
      ],
    );
  }
} 