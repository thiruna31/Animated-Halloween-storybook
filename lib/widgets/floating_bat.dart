import 'package:flutter/material.dart';

class FloatingBat extends StatelessWidget {
  final double top;
  final double left;

  const FloatingBat({super.key, required this.top, required this.left});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Image.asset('assets/images/bat.png', width: 80),
    );
  }
}
