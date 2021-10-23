import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:sn_design_system/src/components/atoms/button/button_widget.dart';

void buildButtonStories(Dashbook dashbook) {
  dashbook.storiesOf('Button').decorator(CenterDecorator()).add('default',
      (ctx) {
    return const ButtonWidget('Hello world!', null);
  });

  runApp(dashbook);
}
