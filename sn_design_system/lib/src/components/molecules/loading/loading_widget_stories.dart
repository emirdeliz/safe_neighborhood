import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:sn_theme/sn_theme.dart';
import 'package:sn_design_system/src/components/molecules/loading/loading_widget.dart';

void main() {
  final dashbook = Dashbook.dualTheme(
      light: SafeNeighborhoodTheme.lightTheme,
      dark: SafeNeighborhoodTheme.darkTheme);

  dashbook.storiesOf('Loading').decorator(CenterDecorator()).add('default',
      (ctx) {
    return const LoadingWidget();
  });

  runApp(dashbook);
}
