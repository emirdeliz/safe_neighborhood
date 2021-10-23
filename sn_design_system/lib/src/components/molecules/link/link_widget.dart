import 'package:flutter/material.dart';
import 'package:sn_design_system/src/components/atoms/text/text_widget.dart';

class LinkWidget extends StatelessWidget {
  final String label;
  final Function onPressed;

  const LinkWidget(this.label, this.onPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return FlatButton(
    //     child: TextWidget(
    //       label,
    //       textAlign: TextAlign.center,
    //       color: Color.linkColorColor,
    //       fontSize: FontSizeCustom.small,
    //       decoration: TextDecoration.underline,
    //     ),
    //     onPressed: this.onPressed);
    return const TextWidget('LinkWidget');
  }
}
