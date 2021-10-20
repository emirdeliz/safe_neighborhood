import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';

import 'package:safe_neighborhood/src/components/atoms/text/text_widget.dart';
import 'package:safe_neighborhood/src/theme/theme.dart';

void main() {
  final dashbook = Dashbook.dualTheme(
      light: SafeNeighborhoodTheme.lightTheme,
      dark: SafeNeighborhoodTheme.darkTheme);

  dashbook.storiesOf('Text').decorator(CenterDecorator()).add('default', (ctx) {
    return const TextWidget('Hello world!');
  });

  runApp(dashbook);
}
