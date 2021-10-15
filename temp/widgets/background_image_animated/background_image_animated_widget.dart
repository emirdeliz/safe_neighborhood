import 'package:flutter/material.dart';

class BackgroundImageAnimatedWidget extends StatefulWidget {
  final AssetImage image;
  final double increasedAnimation;
  final int transitionInterval;
  final Widget child;

  const BackgroundImageAnimatedWidget(this.child, {
    Key key,
    this.image,
    this.increasedAnimation = 10,
    this.transitionInterval = 10
  }) : super(key: key);

  @override
  _BackgroundImageAnimatedWidgetState createState() => _BackgroundImageAnimatedWidgetState();
}

class _BackgroundImageAnimatedWidgetState extends State<BackgroundImageAnimatedWidget> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: this.widget.transitionInterval),
      vsync: this,
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
			animation: _controller,
			builder: (BuildContext context, Widget child) {
				double offset = _controller.value * this.widget.increasedAnimation; 
				return DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: this.widget.image,
              fit: BoxFit.contain,
              alignment: Alignment(0, offset),
              repeat: ImageRepeat.repeatY
            )
          ),
          child: this.widget.child
        );
			}
		);
  }
}
