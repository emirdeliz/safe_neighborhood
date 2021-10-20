import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:safe_neighborhood/src/components/atoms/input_text/input_text_widget.dart';
import 'package:safe_neighborhood/src/theme/theme.dart';

void main() {
  final dashbook = Dashbook.dualTheme(
      light: SafeNeighborhoodTheme.lightTheme,
      dark: SafeNeighborhoodTheme.darkTheme);

  dashbook.storiesOf('InputText').decorator(CenterDecorator()).add('default',
      (ctx) {
    return InputTextWidget('Hello world', (value) => {});
  });

  runApp(dashbook);
}
