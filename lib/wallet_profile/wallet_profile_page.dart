import 'package:flutter/material.dart';
import 'wallet_profile_header.dart';
import 'wallet_profile_stats.dart';
import 'wallet_profile_fish_check.dart';
import 'wallet_profile_tabs.dart';
import 'wallet_profile_table.dart';

class WalletProfilePage extends StatelessWidget {
  const WalletProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        WalletProfileHeader(),
        SizedBox(height: 12),
        WalletProfileStats(),
        SizedBox(height: 12),
        WalletProfileFishCheck(),
        SizedBox(height: 12),
        WalletProfileTabs(),
        SizedBox(height: 8),
        WalletProfileTable(),
      ],
    );
  }
} 