import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final dynamic text;

  const TextWidget(
    this.text, {
    Key? key,
  }) : super(key: key);

  Widget _buildText() {
    return Text(text);
  }

  @override
  Widget build(BuildContext context) {
    return _buildText();
  }
}
