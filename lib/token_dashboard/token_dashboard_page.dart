import 'package:flutter/material.dart';
import 'token_dashboard_chart.dart';
import 'token_dashboard_holder_tabs.dart';
import 'token_dashboard_stats.dart';
import 'token_dashboard_holder_table.dart';
import 'token_dashboard_top_stats.dart';
import 'token_dashboard_group_tabs.dart';
import 'token_dashboard_holder_table_header.dart';
import 'token_dashboard_holder_list.dart';
import 'token_dashboard_bottom_nav.dart';

class TokenDashboardPage extends StatefulWidget {
  const TokenDashboardPage({super.key});

  @override
  State<TokenDashboardPage> createState() => _TokenDashboardPageState();
}

class _TokenDashboardPageState extends State<TokenDashboardPage> {
  int groupTabIndex = 0;

  static const List<List<TokenDashboardHolderRowData>> holderDataSets = [
    [
      TokenDashboardHolderRowData(rank: 1, address: '0x3c6...7b4', percent: '2.3%', amount: '\$4.5M', eth: '0', time: '04/03 02:'),
      TokenDashboardHolderRowData(rank: 2, address: '0x8ca...fc0', percent: '2.18%', amount: '\$4.3M', eth: '0', time: '03/31 02:'),
      TokenDashboardHolderRowData(rank: 3, address: '0xd3e...d97', percent: '2.18%', amount: '\$4.3M', eth: '20.4', time: '03/28 18:'),
      TokenDashboardHolderRowData(rank: 4, address: '0xdc2...7c9', percent: '2.1%', amount: '\$4.1M', eth: '0', time: '03/31 02:'),
    ],
    [
      TokenDashboardHolderRowData(rank: 1, address: '0xaaa...111', percent: '5.0%', amount: '\$1.2M', eth: '10', time: '04/01 12:'),
      TokenDashboardHolderRowData(rank: 2, address: '0xbbb...222', percent: '4.2%', amount: '\$1.1M', eth: '0', time: '03/30 09:'),
    ],
    [
      TokenDashboardHolderRowData(rank: 1, address: '0xccc...333', percent: '3.3%', amount: '\$2.2M', eth: '5', time: '03/29 15:'),
    ],
    [
      TokenDashboardHolderRowData(rank: 1, address: '0xddd...444', percent: '1.1%', amount: '\$0.9M', eth: '0', time: '03/28 10:'),
    ],
    [
      TokenDashboardHolderRowData(rank: 1, address: '0xeee...555', percent: '0.5%', amount: '\$0.2M', eth: '0', time: '03/27 08:'),
    ],
    [
      TokenDashboardHolderRowData(rank: 1, address: '0xfff...666', percent: '0.1%', amount: '\$0.1M', eth: '0', time: '03/26 06:'),
    ],
    [
      TokenDashboardHolderRowData(rank: 1, address: '0xggg...777', percent: '0.01%', amount: '\$0.01M', eth: '0', time: '03/25 04:'),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 主K线区
              TokenDashboardChart(),
              // 持有者tab
              TokenDashboardHolderTabs(),
              // 顶部统计行
              TokenDashboardTopStats(),
              // 统计区
              TokenDashboardStats(),
              // 分组tab
              TokenDashboardGroupTabs(selectedIndex: groupTabIndex, onTabChanged: (i) => setState(() => groupTabIndex = i)),
              // 持有人表头
              TokenDashboardHolderTableHeader(),
              // 持有人表
              TokenDashboardHolderList(data: holderDataSets[groupTabIndex]),
              SizedBox(height: 80), // 给底部按钮留空间
            ],
          ),
        ),
        // 底部悬浮按钮区
        const Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: TokenDashboardBottomNav(),
        ),
      ],
    );
  }
} 