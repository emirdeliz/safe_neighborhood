import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:sn_design_system/src/components/atoms/text/text_widget.dart';

void buildDropdownButtonStories(Dashbook dashbook) {
  dashbook
      .storiesOf('DropdownButton')
      .decorator(CenterDecorator())
      .add('default', (ctx) {
    return const TextWidget('DropdownButtonWidget');
  });

  runApp(dashbook);
}
