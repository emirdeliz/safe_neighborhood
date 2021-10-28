import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:sn_design_system/src/components/atoms/list_text/list_text_widget.dart';
import 'package:sn_design_system/src/components/atoms/text/text_widget.dart';

void buildListTextStories(Dashbook dashbook) {
  dashbook.storiesOf('ListText').decorator(CenterDecorator()).add('default',
      (ctx) {
    return const ListTextWidget([
      TextWidget('Value 1', key: Key('1')),
      TextWidget('Value 2', key: Key('2')),
      TextWidget('Value 3', key: Key('3'))
    ]);
  });

  runApp(dashbook);
}
