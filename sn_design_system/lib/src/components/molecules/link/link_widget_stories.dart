import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:sn_design_system/src/components/atoms/text/text_widget.dart';

void buildLinkStories(Dashbook dashbook) {
  dashbook.storiesOf('Link').decorator(CenterDecorator()).add('default', (ctx) {
    return const TextWidget('LinkWidget');
  });

  runApp(dashbook);
}
