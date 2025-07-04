import 'package:flutter/material.dart';
import 'token_detail_header.dart';
import 'token_detail_chart.dart';
import 'token_detail_address.dart';
import 'token_detail_stats.dart';
import 'token_detail_kline_btn.dart';
import 'token_detail_activity_table.dart';

class TokenDetailPage extends StatelessWidget {
  const TokenDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181A20),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,// 页面总宽度
          margin: const EdgeInsets.symmetric(vertical: 24),
          padding: const EdgeInsets.all(0),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TokenDetailHeader(), // 顶部信息区
                SizedBox(height: 8),
                TokenDetailChart(), // 图表区
                SizedBox(height: 8),
                TokenDetailAddress(), // 地址区
                SizedBox(height: 8),
                TokenDetailStats(), // 统计区
                SizedBox(height: 16),
                TokenDetailKlineBtn(), // K线按钮
                SizedBox(height: 16),
                TokenDetailActivityTable(), // 明细表
              ],
            ),
          ),
        ),
      ),
    );
  }
} 