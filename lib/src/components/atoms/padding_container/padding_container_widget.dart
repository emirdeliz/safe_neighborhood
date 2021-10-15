import 'package:flutter/material.dart';

class PaddingContainerWidget extends StatelessWidget {
  final Widget child;
  final double paddingTop;
  final double paddingBottom;
  final double paddingLeft;
  final double paddingRight;
  final double padding;
  final List<double> paddingL;

  const PaddingContainerWidget(
    this.child, 
    {
      this.paddingTop = 0,
      this.paddingBottom = 0,
      this.paddingLeft = 0,
      this.paddingRight = 0,
      this.padding,
      this.paddingL,
      Key key, 
    }
  ) : super(key: key);

  double _getPaddingAll(int index) {
    if (this.paddingL != null && this.paddingL.length > index) {
      return this.paddingL[index];
    }
    return this.padding;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: this._getPaddingAll(0) ?? this.paddingTop,
        right: this._getPaddingAll(1) ?? this.paddingRight,
        bottom: this._getPaddingAll(2) ?? this.paddingBottom,
        left: this._getPaddingAll(3) ?? this.paddingLeft,
      ),
      child: this.child
    );
  }
}
