import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:sn_design_system/src/components/atoms/text/text_widget.dart';

void buildTextStories(Dashbook dashbook) {
  dashbook.storiesOf('Text').decorator(CenterDecorator()).add('default', (ctx) {
    return const TextWidget('Hello world!');
  });

  runApp(dashbook);
}
