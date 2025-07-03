import 'package:flutter/material.dart';
import 'nav_tabs.dart';
import 'clanker_tabs.dart';
import 'time_tabs.dart';
import 'filter_bar.dart';
import 'top_nav_bar.dart';
import 'login_dialog.dart';
import 'mock_json.dart' as mock;
import 'dart:convert';
import 'token_item.dart';
import 'register_dialog.dart';
import 'wallet_profile/wallet_profile_page.dart';
import 'token_dashboard/token_dashboard_page.dart';
import 'token_list_page.dart';

class TokenBoardPage extends StatefulWidget {
  const TokenBoardPage({super.key});

  @override
  State<TokenBoardPage> createState() => _TokenBoardPageState();
}

class _TokenBoardPageState extends State<TokenBoardPage> {
  int navTabIndex = 0;
  int clankerTabIndex = 0;
  int timeTabIndex = 2;
  int mainContentType = 2; // 0: WalletProfilePage, 1: TokenDashboardPage, 2: TokenListPage

  late final List<Token> tokenList;

  @override
  void initState() {
    super.initState();
    final data = jsonDecode(mock.json)['data'] as List;
    tokenList = data.map((e) => Token.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181A20),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 390),
          child: Column(
            children: [
              _buildTopBar(),
              const SizedBox(height: 2),
              TopNavBar(
                onLogin: () {
                  showDialog(
                    context: context,
                    builder: (context) => const LoginDialog(),
                  );
                },
                onRegister: () {
                  showDialog(
                    context: context,
                    builder: (context) => const RegisterDialog(),
                  );
                },
                onWalletProfile: () {
                  setState(() {
                    mainContentType = 0;
                  });
                },
              ),
              const SizedBox(height: 2),
              NavTabs(
                selectedIndex: navTabIndex,
                onTabSelected: (i) => setState(() => navTabIndex = i),
              ),
              const SizedBox(height: 2),
              if (mainContentType == 0)
                Expanded(child: WalletProfilePage())
              else if (mainContentType == 1)
                Expanded(
                  child: TokenDashboardPage(
                    onShowWalletProfile: () {
                      setState(() {
                        mainContentType = 0;
                      });
                    },
                  ),
                )
              else
                Expanded(
                  child: TokenListPage(
                    tokenList: tokenList,
                    clankerTabIndex: clankerTabIndex,
                    onClankerTabChanged: (i) => setState(() => clankerTabIndex = i),
                    timeTabIndex: timeTabIndex,
                    onTimeTabChanged: (i) => setState(() => timeTabIndex = i),
                    onTokenTap: () {
                      setState(() {
                        mainContentType = 1;
                      });
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopBar() {
    return Container(
      color: const Color(0xFF23262F),
      child: Center(
        child: Container(
          width: 390,
          height: 88,
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset('assets/logo.png', fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 16),
              // App名称、描述
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'GMGN App',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        letterSpacing: 0.2,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '更快发现，秒级交易',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFB0B3BC),
                        letterSpacing: 0.1,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              // 立即体验按钮
              SizedBox(
                height: 40,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFD1E7DD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    minimumSize: const Size(0, 40),
                  ),
                  child: const Text(
                    '立即体验',
                    style: TextStyle(
                      color: Color(0xFF1E463A),
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
    );
  }
} 