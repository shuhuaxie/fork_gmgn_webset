import 'package:flutter/material.dart';
import 'token_dashboard_chart.dart';
import 'token_dashboard_holder_tabs.dart';
import 'token_dashboard_stats.dart';
import 'token_dashboard_holder_table.dart';

class TokenDashboardPage extends StatelessWidget {
  const TokenDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 520, // 红框区域宽度
      margin: const EdgeInsets.symmetric(vertical: 0),
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          TokenDashboardChart(), // 主K线区
          SizedBox(height: 0),
          TokenDashboardHolderTabs(), // 持有者tab
          SizedBox(height: 0),
          TokenDashboardStats(), // 统计区
          SizedBox(height: 0),
          TokenDashboardHolderTable(), // 明细表
        ],
      ),
    );
  }
} 