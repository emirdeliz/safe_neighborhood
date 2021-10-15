import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  final String labelText;
  final TextInputType textInputType;
  final TextEditingController controller;
  final Function onChanged;
  final bool obscureText;

  const InputTextWidget({
    Key key, 
    @required this.labelText,
    this.controller,
    this.onChanged,
    this.textInputType = TextInputType.text,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: this.textInputType,
      obscureText: this.obscureText,
      controller: this.controller,
      onChanged: this.onChanged,
      decoration: InputDecoration(
        labelText: this.labelText,
        labelStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
      style: TextStyle(fontSize: 20),
    );
  }
}
