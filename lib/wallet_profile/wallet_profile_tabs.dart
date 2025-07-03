import 'package:flutter/material.dart';

class WalletProfileTabs extends StatelessWidget {
  const WalletProfileTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _TabBtn('最近盈亏', true),
        _TabBtn('持有代币', false),
        _TabBtn('活动', false),
        _TabBtn('部署代币', false),
      ],
    );
  }
}

class _TabBtn extends StatelessWidget {
  final String text;
  final bool selected;
  const _TabBtn(this.text, this.selected);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFF23262F) : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: selected ? Colors.white : const Color(0xFFB0B3BC),
          fontWeight: FontWeight.w600,
          fontSize: 15,
        ),
      ),
    );
  }
} 