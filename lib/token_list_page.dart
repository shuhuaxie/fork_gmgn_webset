import 'package:flutter/material.dart';
import 'token_item.dart';
import 'clanker_tabs.dart';
import 'time_tabs.dart';
import 'filter_bar.dart';

class TokenListPage extends StatelessWidget {
  final List<Token> tokenList;
  final VoidCallback onTokenTap;
  final int clankerTabIndex;
  final ValueChanged<int> onClankerTabChanged;
  final int timeTabIndex;
  final ValueChanged<int> onTimeTabChanged;
  const TokenListPage({
    required this.tokenList,
    required this.onTokenTap,
    required this.clankerTabIndex,
    required this.onClankerTabChanged,
    required this.timeTabIndex,
    required this.onTimeTabChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 2),
        ClankerTabs(
          selectedIndex: clankerTabIndex,
          onTabSelected: onClankerTabChanged,
        ),
        const SizedBox(height: 2),
        TimeTabs(
          selectedIndex: timeTabIndex,
          onTabSelected: onTimeTabChanged,
        ),
        const SizedBox(height: 2),
        const FilterBar(),
        const SizedBox(height: 2),
        _buildTableHeader(),
        const Divider(height: 1, color: Color(0xFF23262F)),
        SizedBox(
          height: 400,
          child: ListView.separated(
            itemCount: tokenList.length,
            separatorBuilder: (_, __) => const Divider(color: Color(0xFF23262F), height: 1),
            itemBuilder: (context, i) {
              return TokenItem(
                token: tokenList[i],
                onTap: onTokenTap,
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildTableHeader() {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      color: const Color(0xFF181A20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Expanded(
            flex: 3,
            child: Text('币种', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 14, fontWeight: FontWeight.w600)),
          ),
          Expanded(
            flex: 2,
            child: Text('池子', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 14, fontWeight: FontWeight.w600)),
          ),
          Expanded(
            flex: 2,
            child: Text('市值', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 14, fontWeight: FontWeight.w600)),
          ),
          Expanded(
            flex: 2,
            child: Text('持有者', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 14, fontWeight: FontWeight.w600)),
          ),
          Expanded(
            flex: 1,
            child: Text('1h', style: TextStyle(color: Color(0xFFB0B3BC), fontSize: 14, fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
  }
} 