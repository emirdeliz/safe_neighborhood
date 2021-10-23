import 'package:dashbook/dashbook.dart';
import 'package:flutter/widgets.dart';
import 'package:sn_design_system/src/components/atoms/text/text_widget.dart';
import 'package:sn_theme/sn_theme.dart';

void main() {
  final dashbook = Dashbook.dualTheme(
      light: SafeNeighborhoodTheme.lightTheme,
      dark: SafeNeighborhoodTheme.darkTheme);

  dashbook.storiesOf('Alert').decorator(CenterDecorator()).add('default',
      (ctx) {
    return const TextWidget('AlertWidget');
  });

  runApp(dashbook);
}
