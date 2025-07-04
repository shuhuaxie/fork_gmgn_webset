import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TokenDetailHeaderToken extends StatelessWidget {
  const TokenDetailHeaderToken({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xFF22C5FF), width: 2),
          ),
          child: ClipOval(
            child: Image.asset('assets/logo.png', fit: BoxFit.cover),
          ),
        ),
        Positioned(
          bottom: -4,
          left: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: const Color(0xFF23262F),
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: SvgPicture.asset('assets/logo_small2.svg'),
            ),
          ),
        ),
      ],
    );
  }
} 