import 'package:safe_neighborhood/app/shared/config/color_custom.dart';
import 'package:safe_neighborhood/app/shared/config/font_size_custom.dart';
import 'package:safe_neighborhood/app/shared/widgets/text/text_widget.dart';
import 'package:flutter/material.dart';

class LinkWidget extends StatelessWidget {
  final String label;
  final Function onPressed;

  const LinkWidget({Key key, @required this.label, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        child: TextWidget(
          this.label,
          textAlign: TextAlign.center,
          color: Color.linkColorColor,
          fontSize: FontSizeCustom.small,
          decoration: TextDecoration.underline,
        ),
        onPressed: this.onPressed);
  }
}
