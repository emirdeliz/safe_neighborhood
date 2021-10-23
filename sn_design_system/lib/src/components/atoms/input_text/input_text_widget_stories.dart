import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:sn_design_system/src/components/atoms/input_text/input_text_widget.dart';

void buildInputTextStories(Dashbook dashbook) {
  dashbook.storiesOf('InputText').decorator(CenterDecorator()).add('default',
      (ctx) {
    return InputTextWidget('Hello world', (value) => {});
  });

  runApp(dashbook);
}
