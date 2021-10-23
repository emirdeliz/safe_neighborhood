library sn_design_system;

import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:sn_design_system/src/components/atoms/button/button_widget_stories.dart';
import 'package:sn_design_system/src/components/atoms/divider/divider_widget_stories.dart';
import 'package:sn_design_system/src/components/atoms/input_text/input_text_widget_stories.dart';
import 'package:sn_design_system/src/components/atoms/list_text/list_text_widget_stories.dart';
import 'package:sn_design_system/src/components/atoms/text/text_widget_stories.dart';
import 'package:sn_design_system/src/components/molecules/alert/alert_widget_stories.dart';
import 'package:sn_design_system/src/components/molecules/dropdown_button/dropdown_button_widget_stories.dart';
import 'package:sn_design_system/src/components/molecules/loading/loading_widget_stories.dart';
import 'package:sn_theme/sn_theme.dart';

void main() {
  final dashbook = Dashbook.dualTheme(
      light: SafeNeighborhoodTheme.lightTheme,
      dark: SafeNeighborhoodTheme.darkTheme);

  // Atoms
  buildButtonStories(dashbook);
  buildDividerStories(dashbook);
  buildInputTextStories(dashbook);
  buildListTextStories(dashbook);
  buildTextStories(dashbook);

  // Molecules
  buildAlertStories(dashbook);
  buildDropdownButtonStories(dashbook);
  buildListTextStories(dashbook);
  buildLoadingStories(dashbook);

  runApp(dashbook);
}
