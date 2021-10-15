import 'package:flutter/material.dart';

class ScrollWidget extends StatelessWidget {
  final Widget child;
  final Axis scrollDirection;

  const ScrollWidget(this.child, { Key key, this.scrollDirection }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: this.scrollDirection ?? Axis.vertical,
      child: this.child
    );
  }
}
