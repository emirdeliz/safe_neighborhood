import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:safe_neighborhood/src/components/atoms/button/button_widget.dart';
import 'package:safe_neighborhood/src/theme/theme.dart';

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
