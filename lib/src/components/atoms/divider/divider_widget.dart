import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  final Color color;

  const DividerWidget(this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
          child: Container(
              decoration: BoxDecoration(
                  border: Border(
        bottom: BorderSide(color: color, width: 1),
      ))))
    ]);
  }
}
