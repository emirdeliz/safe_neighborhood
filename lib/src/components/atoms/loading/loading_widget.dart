import 'package:safe_neighborhood/app/shared/config/color_custom.dart';
import 'package:safe_neighborhood/app/shared/config/font_size_custom.dart';
import 'package:safe_neighborhood/app/shared/widgets/text/text_widget.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      CircularProgressIndicator(),
      Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextWidget('Processando...',
              fontSize: FontSizeCustom.small, color: Color.loadingTextColor))
    ]);
  }
}
