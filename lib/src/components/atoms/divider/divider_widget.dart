import 'package:safe_neighborhood/app/shared/config/color_custom.dart';
import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  final Color color;

  const DividerWidget({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
          child: Container(
              decoration: BoxDecoration(
                  border: Border(
        bottom: BorderSide(color: this.color ?? Color.dividerColor, width: 1),
      ))))
    ]);
  }
}
