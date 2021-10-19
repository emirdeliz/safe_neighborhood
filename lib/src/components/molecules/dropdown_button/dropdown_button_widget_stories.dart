import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:safe_neighborhood/src/components/atoms/divider/divider_widget.dart';
import 'package:safe_neighborhood/src/theme/color.dart';
import 'package:safe_neighborhood/src/theme/theme.dart';

void main() {
  final dashbook = Dashbook.dualTheme(
      light: SafeNeighborhoodTheme.lightTheme,
      dark: SafeNeighborhoodTheme.darkTheme);

  dashbook.storiesOf('Divider').decorator(CenterDecorator()).add('default',
      (ctx) {
    return const DividerWidget(DarkColor.green);
  });

  runApp(dashbook);
}
