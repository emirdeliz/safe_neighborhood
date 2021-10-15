import 'package:safe_neighborhood/app/shared/config/margin_custom.dart';
import 'package:flutter/material.dart';

class MarginContainerWidget extends StatelessWidget {
  final Widget child;
  final double marginTop;
  final double marginBottom;
  final double marginLeft;
  final double marginRight;

  const MarginContainerWidget(
    this.child, {
    Key key,
    this.marginTop = MarginCustom.small,
    this.marginBottom = MarginCustom.small,
    this.marginLeft = MarginCustom.none,
    this.marginRight = MarginCustom.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: child,
        margin: EdgeInsets.only(
            top: this.marginTop,
            bottom: this.marginBottom,
            left: this.marginLeft,
            right: this.marginRight));
  }
}
