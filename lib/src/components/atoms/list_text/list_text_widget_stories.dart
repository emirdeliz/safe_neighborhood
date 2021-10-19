import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:safe_neighborhood/src/components/atoms/list_text/list_text_widget.dart';
import 'package:safe_neighborhood/src/components/atoms/text/text_widget.dart';
import 'package:safe_neighborhood/src/theme/theme.dart';

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
