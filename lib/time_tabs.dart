import 'package:flutter/material.dart';

class TimeTabs extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;
  const TimeTabs({Key? key, required this.selectedIndex, required this.onTabSelected}) : super(key: key);

  static const times = ['1m', '5m', '1h', '6h', '24h'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 40,
        color: const Color(0xFF181A20),
        child: Row(
          children: List.generate(times.length, (i) => Padding(
            padding: const EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () => onTabSelected(i),
              child: Container(
                height: 32,
                padding: const EdgeInsets.symmetric(horizontal: 18),
                decoration: BoxDecoration(
                  color: selectedIndex == i ? const Color(0xFF23262F) : Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: selectedIndex == i ? const Color(0xFF23262F) : const Color(0xFF353945),
                    width: 1.2,
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  times[i],
                  style: TextStyle(
                    color: selectedIndex == i ? Colors.white : const Color(0xFFB0B3BC),
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          )),
        ),
      ),
    );
  }
} 