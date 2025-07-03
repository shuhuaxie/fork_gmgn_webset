import 'package:flutter/material.dart';
import 'nav_tabs.dart';
import 'clanker_tabs.dart';
import 'time_tabs.dart';
import 'filter_bar.dart';
import 'top_nav_bar.dart';
import 'login_dialog.dart';

class TokenBoardPage extends StatefulWidget {
  const TokenBoardPage({Key? key}) : super(key: key);

  @override
  State<TokenBoardPage> createState() => _TokenBoardPageState();
}

class _TokenBoardPageState extends State<TokenBoardPage> {
  int navTabIndex = 0;
  int clankerTabIndex = 0;
  int timeTabIndex = 2;

  final List<String> tabs = [
    '战场', '新币', '热门', '探索', '监控', '追踪', '持仓'
  ];
  final List<String> times = ['1m', '5m', '1h', '6h', '24h'];

  final List<Map<String, dynamic>> tokens = [
    {
      'logo': Icons.qr_code,
      'name': 'QRQ',
      'address': '0x2b5...adf',
      'volume': '571.2K',
      'marketCap': '43.4M',
      'holders': '76.3K',
      'change': 48,
    },
    {
      'logo': Icons.qr_code_2,
      'name': 'CLANKEQ',
      'address': '0x1bc...bcb',
      'volume': '1.3M',
      'marketCap': '42.4M',
      'holders': '441.6K',
      'change': 32,
    },
    {
      'logo': Icons.emoji_emotions,
      'name': 'FartcoQ',
      'address': '0x2f6...2ae',
      'volume': '1.7M',
      'marketCap': '27.1M',
      'holders': '87.5K',
      'change': 22,
    },
    // ... 可继续添加更多假数据
  ];

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
              ),
              const SizedBox(height: 2),
              NavTabs(
                selectedIndex: navTabIndex,
                onTabSelected: (i) => setState(() => navTabIndex = i),
              ),
              const SizedBox(height: 2),
              ClankerTabs(
                selectedIndex: clankerTabIndex,
                onTabSelected: (i) => setState(() => clankerTabIndex = i),
              ),
              const SizedBox(height: 2),
              TimeTabs(
                selectedIndex: timeTabIndex,
                onTabSelected: (i) => setState(() => timeTabIndex = i),
              ),
              const SizedBox(height: 2),
              const FilterBar(),
              const SizedBox(height: 2),
              _buildTableHeader(),
              const Divider(height: 1, color: Color(0xFF23262F)),
              SizedBox(
                height: 400, // 可根据实际内容调整
                child: ListView.separated(
                  itemCount: tokens.length,
                  separatorBuilder: (_, __) => const Divider(color: Color(0xFF23262F), height: 1),
                  itemBuilder: (context, i) {
                    final t = tokens[i];
                    return _TokenRow(token: t, index: i);
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

// 新增TokenRow组件，支持hover高亮
class _TokenRow extends StatefulWidget {
  final Map<String, dynamic> token;
  final int index;
  const _TokenRow({required this.token, required this.index});

  @override
  State<_TokenRow> createState() => _TokenRowState();
}

class _TokenRowState extends State<_TokenRow> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    final t = widget.token;
    return MouseRegion(
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 120),
        height: 56,
        color: _hovering
            ? const Color(0xFF23262F)
            : (widget.index % 2 == 0 ? const Color(0xFF181A20) : const Color(0xFF1A1C23)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 8),
            // 币种Logo和名称
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: const Color(0xFF23262F),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(t['logo'], color: Colors.white, size: 22),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(t['name'], style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 15, height: 1.1)),
                      const SizedBox(height: 2),
                      Text(t['address'], style: const TextStyle(color: Color(0xFFB0B3BC), fontSize: 12, height: 1.1)),
                    ],
                  ),
                ],
              ),
            ),
            // 池子
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Text(t['volume'], style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15)),
              ),
            ),
            // 市值
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Text(t['marketCap'], style: const TextStyle(color: Color(0xFFFFB800), fontWeight: FontWeight.w700, fontSize: 15)),
              ),
            ),
            // 持有者
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Text(t['holders'], style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15)),
              ),
            ),
            // 1h涨跌幅
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '${t['change']}',
                    style: TextStyle(
                      color: t['change'] >= 0 ? const Color(0xFF00C076) : const Color(0xFFFF554A),
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Icon(Icons.flash_on, color: Color(0xFF00C076), size: 18),
                ],
              ),
            ),
            const SizedBox(width: 32),
          ],
        ),
      ),
    );
  }
} 