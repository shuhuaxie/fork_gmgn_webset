import 'package:flutter/material.dart';
import 'token_dashboard/token_dashboard_page.dart';

class Token {
  final String symbol;
  final String address;
  final String logo;
  final int days;
  final String holders;
  final String liquidity;
  final String marketCap;
  final String price;

  Token({
    required this.symbol,
    required this.address,
    required this.logo,
    required this.days,
    required this.holders,
    required this.liquidity,
    required this.marketCap,
    required this.price,
  });

  factory Token.fromJson(Map<String, dynamic> json) {
    return Token(
      symbol: json['symbol'] ?? '',
      address: json['address'] ?? '',
      logo: json['logo'] ?? '',
      days: ((DateTime.now().millisecondsSinceEpoch ~/ 1000 - (json['open_timestamp'] ?? 0)) ~/ 86400),
      holders: _formatNum(json['holder_count']),
      liquidity: _formatNum(json['liquidity']),
      marketCap: _formatNum(json['market_cap'], prefix: '4'),
      price: _formatNum(json['price']),
    );
  }

  static String _formatNum(dynamic n, {String prefix = ''}) {
    if (n == null) return '';
    double v = 0;
    if (n is String) v = double.tryParse(n) ?? 0;
    if (n is num) v = n.toDouble();
    if (v >= 1000000) return '${prefix}${(v / 1000000).toStringAsFixed(1)}M';
    if (v >= 1000) return '${prefix}${(v / 1000).toStringAsFixed(1)}K';
    return '$prefix${v.toStringAsFixed(1)}';
  }
}

class TokenItem extends StatelessWidget {
  final Token token;
  final VoidCallback? onTap;
  const TokenItem({required this.token, this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        color: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // logo
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: const Color(0xFF23262F),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(token.logo, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(width: 10),
            // 名称、天数、合约
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(token.symbol, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 15)),
                      const SizedBox(width: 4),
                      Text('${token.days}d', style: const TextStyle(color: Color(0xFFB0B3BC), fontSize: 12)),
                      const SizedBox(width: 4),
                      Text(token.address.length > 8 ? '0x${token.address.substring(token.address.length-8)}' : token.address, style: const TextStyle(color: Color(0xFFB0B3BC), fontSize: 12)),
                    ],
                  ),
                ],
              ),
            ),
            // 持有者
            Expanded(
              flex: 2,
              child: Text(token.holders, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15)),
            ),
            // 池子
            Expanded(
              flex: 2,
              child: Text(token.liquidity, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15)),
            ),
            // 市值
            Expanded(
              flex: 2,
              child: Text(token.marketCap, style: const TextStyle(color: Color(0xFF00C2FF), fontWeight: FontWeight.w700, fontSize: 15)),
            ),
            // 闪电icon
            const Icon(Icons.flash_on, color: Color(0xFF00C076), size: 18),
          ],
        ),
      ),
    );
  }
} 