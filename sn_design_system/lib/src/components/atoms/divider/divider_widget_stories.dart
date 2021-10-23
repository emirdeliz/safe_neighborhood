import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:sn_design_system/src/components/atoms/divider/divider_widget.dart';
import 'package:sn_theme/sn_theme.dart';

void buildDividerStories(Dashbook dashbook) {
  dashbook.storiesOf('Divider').decorator(CenterDecorator()).add('default',
      (ctx) {
    return const DividerWidget(DarkColor.green);
  });

  runApp(dashbook);
}
