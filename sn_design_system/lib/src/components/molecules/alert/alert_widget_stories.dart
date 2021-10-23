import 'package:dashbook/dashbook.dart';
import 'package:flutter/widgets.dart';
import 'package:sn_design_system/src/components/atoms/text/text_widget.dart';

void buildAlertStories(Dashbook dashbook) {
  dashbook.storiesOf('Alert').decorator(CenterDecorator()).add('default',
      (ctx) {
    return const TextWidget('AlertWidget');
  });

  runApp(dashbook);
}
