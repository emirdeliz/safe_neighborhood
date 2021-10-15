import 'package:safe_neighborhood/app/shared/config/padding_custom.dart';
import 'package:safe_neighborhood/app/shared/widgets/padding_container/padding_container_widget.dart';
import 'package:flutter/material.dart';

class ListTextWidget extends StatelessWidget {
  final List<Widget> list;

  const ListTextWidget(
    this.list, {
    Key key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: this
            .list
            .map((Widget item) => (Row(children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Text(' '),
                  ),
                  Expanded(
                      child: PaddingContainerWidget(
                    item,
                    paddingBottom: PaddingCustom.none,
                    paddingLeft: PaddingCustom.small,
                  ))
                ])))
            .toList());
  }
}
