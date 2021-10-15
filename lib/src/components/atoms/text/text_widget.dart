import 'package:safe_neighborhood/app/shared/config/font_size_custom.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final dynamic text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final TextDecoration decoration;
  final TextOverflow overflow;

  const TextWidget(
    this.text, {
    Key key,
    this.fontSize = FontSizeCustom.normal,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.fontWeight,
    this.textAlign,
    this.decoration,
  }) : super(key: key);

  Widget _buildWrapText() {
    final bool isString = text is String;
    return (Row(children: [
      Flexible(fit: FlexFit.loose, child: isString ? _buildText() : this.text)
    ]));
  }

  Widget _buildText() {
    return Text(this.text,
        textAlign: this.textAlign,
        overflow: this.overflow,
        style: TextStyle(
          fontSize: this.fontSize,
          color: this.color,
          fontWeight: this.fontWeight,
          decoration: this.decoration,
        ));
  }

  @override
  Widget build(BuildContext context) {
    final bool isWrapText = this.overflow == TextOverflow.fade;
    return isWrapText ? _buildWrapText() : _buildText();
  }
}
