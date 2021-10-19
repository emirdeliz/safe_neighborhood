import 'package:flutter/material.dart';

class ListTextWidget extends StatelessWidget {
  final List<Widget> list;

  const ListTextWidget(
    this.list, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: list
            .map((Widget item) => (Row(children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Text(' '),
                  ),
                  Expanded(child: item)
                ])))
            .toList());
  }
}
