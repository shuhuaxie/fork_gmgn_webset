import 'package:flutter/material.dart';
import 'wallet_profile_header.dart';
import 'wallet_profile_stats.dart';
import 'wallet_profile_fish_check.dart';
import 'wallet_profile_tabs.dart';
import 'wallet_profile_table.dart';
import 'wallet_profile_activity_table.dart';
import 'recent_tabs.dart';

class WalletProfilePage extends StatefulWidget {
  const WalletProfilePage({Key? key}) : super(key: key);

  @override
  State<WalletProfilePage> createState() => _WalletProfilePageState();
}

class _WalletProfilePageState extends State<WalletProfilePage> {
  int recentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget tableWidget;
    if (recentTabIndex == 0) {
      tableWidget = const WalletProfileTable();
    } else if (recentTabIndex == 2) {
      tableWidget = const WalletProfileActivityTable();
    } else {
      tableWidget = const SizedBox(height: 200, child: Center(child: Text('敬请期待', style: TextStyle(color: Colors.white70))));
    }
    return SingleChildScrollView(
      child: Column(
        children: [
          const WalletProfileHeader(),
          const SizedBox(height: 12),
          const WalletProfileTabs(),
          const SizedBox(height: 8),
          const WalletProfileStats(),
          const SizedBox(height: 12),
          const WalletProfileFishCheck(),
          const SizedBox(height: 12),
          RecentTabs(
            selectedIndex: recentTabIndex,
            onTabChanged: (i) => setState(() => recentTabIndex = i),
          ),
          const SizedBox(height: 8),
          tableWidget,
        ],
      ),
    );
  }
} 