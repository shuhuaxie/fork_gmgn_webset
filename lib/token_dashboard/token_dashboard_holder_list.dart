import 'package:flutter/material.dart';
import 'token_dashboard_holder_row.dart';

class TokenDashboardHolderRowData {
  final int rank;
  final String address;
  final String percent;
  final String amount;
  final String eth;
  final String time;
  const TokenDashboardHolderRowData({required this.rank, required this.address, required this.percent, required this.amount, required this.eth, required this.time});
}

/// 持有人表内容（宽520，行高48，背景#23262F，圆角16，分割线#23262F）
class TokenDashboardHolderList extends StatelessWidget {
  final List<TokenDashboardHolderRowData> data;
  final void Function(String address)? onAddressTap;
  const TokenDashboardHolderList({super.key, required this.data, this.onAddressTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 520,
      decoration: BoxDecoration(
        color: const Color(0xFF23262F),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: data.map((row) => TokenDashboardHolderRow(
          rank: row.rank,
          address: row.address,
          percent: row.percent,
          amount: row.amount,
          eth: row.eth,
          time: row.time,
          onAddressTap: onAddressTap == null ? null : () => onAddressTap!(row.address),
        )).toList(),
      ),
    );
  }
} 