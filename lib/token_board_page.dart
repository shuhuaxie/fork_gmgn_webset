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
import 'package:http/http.dart' as http;

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

  late List<Token> tokenList = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _fetchTokenList();
  }

  Future<void> _fetchTokenList() async {
    setState(() { _loading = true; });
    final url = Uri.parse('https://m1.apifoxmock.com/m2/6706347-6416164-default/317465933');
    final resp = await http.get(url);
    if (resp.statusCode == 200) {
      final jsonMap = jsonDecode(resp.body);
      final data = jsonMap['data'] as List;
      setState(() {
        tokenList = data.map((e) => Token.fromJson(e)).toList();
        _loading = false;
      });
    } else {
      setState(() { _loading = false; });
    }
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
                onLogoTap: () {
                  setState(() {
                    mainContentType = 2;
                  });
                },
              ),
              const SizedBox(height: 2),
              NavTabs(
                selectedIndex: navTabIndex,
                onTabSelected: (i) => setState(() => navTabIndex = i),
              ),
              const SizedBox(height: 2),
              if (_loading)
                const Expanded(child: Center(child: CircularProgressIndicator()))
              else if (mainContentType == 0)
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
          height: 68,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 12),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset('assets/logo.png', fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Text(
                        'GMGN App',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          height: 1.27,
                          letterSpacing: 0.2,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2, bottom: 12),
                      child: Text(
                        '更快发现，秒级交易',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF8E929D),
                          height: 1.27,
                          letterSpacing: 0.1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              SizedBox(
                width: 72,
                height: 32,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFB7F8D3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: const Text(
                    '立即体验',
                    style: TextStyle(
                      color: Color(0xFF23262F),
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
            ],
          ),
        ),
      ),
    );
  }
} 