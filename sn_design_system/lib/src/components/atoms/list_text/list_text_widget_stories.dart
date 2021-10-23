import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:sn_design_system/src/components/atoms/list_text/list_text_widget.dart';
import 'package:sn_design_system/src/components/atoms/text/text_widget.dart';
import 'package:sn_theme/sn_theme.dart';

void main() {
  final dashbook = Dashbook.dualTheme(
      light: SafeNeighborhoodTheme.lightTheme,
      dark: SafeNeighborhoodTheme.darkTheme);

  dashbook.storiesOf('ListText').decorator(CenterDecorator()).add('default',
      (ctx) {
    return const ListTextWidget([
      TextWidget('Value 1'),
      TextWidget('Value 2'),
      TextWidget('Value 3'),
    ]);
  });

  runApp(dashbook);
}
