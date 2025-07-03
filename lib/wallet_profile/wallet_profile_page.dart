import 'package:flutter/material.dart';
import 'wallet_profile_header.dart';
import 'wallet_profile_stats.dart';
import 'wallet_profile_fish_check.dart';
import 'wallet_profile_tabs.dart';
import 'wallet_profile_table.dart';
import 'recent_tabs.dart';

class WalletProfilePage extends StatelessWidget {
  const WalletProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          RecentTabs(),
          const SizedBox(height: 8),
          const WalletProfileTable(),
        ],
      ),
    );
  }
} 