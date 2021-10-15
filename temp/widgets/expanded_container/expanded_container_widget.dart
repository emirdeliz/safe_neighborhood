import 'package:app_digital_pricing/app/shared/widgets/padding_container/padding_container_widget.dart';
import 'package:flutter/material.dart';

class ExpandedContainerWidget extends StatelessWidget {
  final int flex;
  final Widget child;
  final Alignment alignment;
  final Color color;
  final double marginTop;
  final double marginBottom;
  final double marginLeft;
  final double marginRight;
  final double paddingTop;
  final double paddingBottom;
  final double paddingLeft;
  final double paddingRight;
  final double padding;
  final List<double> paddingL;
  final BorderSide borderRight;
  final BoxDecoration decoration;

  const ExpandedContainerWidget(
    this.child, 
    {
      this.flex,
      this.alignment,
      this.color,
      this.marginTop = 0,
      this.marginBottom = 0,
      this.marginLeft = 0,
      this.marginRight = 0,
      this.paddingTop = 0,
      this.paddingBottom = 0,
      this.paddingLeft = 0,
      this.paddingRight = 0,
      this.padding,
      this.paddingL,
      this.borderRight = BorderSide.none,
      this.decoration,
      Key key, 
    }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: this.flex,
      child: Container(
        decoration: this.decoration ?? BoxDecoration(
          border: Border(right: this.borderRight),
          color: this.color
        ),
        margin: EdgeInsets.only(
          top: this.marginTop,
          bottom: this.marginBottom,
          left: this.marginLeft,
          right: this.marginRight,
        ),
        child: PaddingContainerWidget(
          this.child,
          paddingTop: this.paddingTop,
          paddingBottom: this.paddingBottom,
          paddingLeft: this.paddingLeft,
          paddingRight: this.paddingRight,
          padding: this.padding,
          paddingL: this.paddingL
        ),
      )
    );
  }
}
