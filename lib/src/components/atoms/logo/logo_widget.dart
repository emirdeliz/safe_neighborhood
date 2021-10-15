import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/app-logo.png',
      height: 70,
      fit: BoxFit.contain,
    );
  }
}
