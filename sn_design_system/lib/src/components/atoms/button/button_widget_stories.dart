import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:sn_design_system/src/components/atoms/button/button_widget.dart';
import 'package:sn_theme/sn_theme.dart';

void main() {
  final dashbook = Dashbook.dualTheme(
      light: SafeNeighborhoodTheme.lightTheme,
      dark: SafeNeighborhoodTheme.darkTheme);

  dashbook.storiesOf('Button').decorator(CenterDecorator()).add('default',
      (ctx) {
    return const ButtonWidget('Hello world!', null);
  });

  runApp(dashbook);
}
