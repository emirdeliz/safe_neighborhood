import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  final String labelText;
  final TextInputType? textInputType;
  final Function(String)? onChanged;
  final bool? obscureText;

  const InputTextWidget(
    this.labelText,
    this.onChanged, {
    this.textInputType,
    this.obscureText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: textInputType,
        obscureText: obscureText ?? false,
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: labelText,
        ));
  }
}
