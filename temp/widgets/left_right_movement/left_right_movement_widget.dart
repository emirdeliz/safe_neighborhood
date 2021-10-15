import 'dart:async';

import 'package:flutter/material.dart';

enum Direction {
  left,
  right
}

class LeftRightMovementWidget extends StatefulWidget {
  final Widget leftWidget;
  final Widget rightWidget;
  final Widget centerWidget;
  final double leftRightWidgetWidth;
  final int transitionInterval;

  const LeftRightMovementWidget({
    Key key,
    this.leftWidget,
    this.rightWidget,
    this.centerWidget,
    this.leftRightWidgetWidth = 100,
    this.transitionInterval = 12
  }) : super(key: key);

  @override
  _LeftRightMovementWidgetState createState() => _LeftRightMovementWidgetState();
}

class _LeftRightMovementWidgetState extends State<LeftRightMovementWidget> {
  Direction _direction = Direction.left;

  void initState() {
    super.initState();
    Timer.periodic(new Duration(seconds: this.widget.transitionInterval), (timer) {
      setState(() {
        final bool isDirectionRight = this._direction == Direction.right;
        this._direction = isDirectionRight ? Direction.left : Direction.right; 
      });
    });
  }

  Widget buildLeftOrRightPosition(Widget widget) {
    final double positionInitial = 0;
    final double offsetMoviment = this.widget.leftRightWidgetWidth;
    final double positionShow = (offsetMoviment * -1);
    final bool isDirectionRight = this._direction == Direction.right;

    return AnimatedPositioned(
      duration: Duration(milliseconds: 500),
      curve: Curves.fastOutSlowIn,
      left: !isDirectionRight ? positionInitial : positionShow,
      right: isDirectionRight ? positionInitial : positionShow,
      child: Container(
        width: MediaQuery.of(context).size.width + offsetMoviment,
        height: MediaQuery.of(context).size.height,
        child: widget
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    final double leftRightWidth = this.widget.leftRightWidgetWidth;
    return Container(
      child: Stack(
        fit: StackFit.loose,
        children: [
          this.buildLeftOrRightPosition(
            Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(width: leftRightWidth, child: this.widget.leftWidget),
                Container(
                  width: MediaQuery.of(context).size.width - leftRightWidth,
                  child: this.widget.centerWidget
                ),
                Container(width: leftRightWidth, child: this.widget.rightWidget)
              ]
            )
          )
        ]
      )
    );
  }
}
