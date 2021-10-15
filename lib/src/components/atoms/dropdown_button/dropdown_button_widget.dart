import 'package:safe_neighborhood/app/shared/config/border_custom.dart';
import 'package:safe_neighborhood/app/shared/config/color_custom.dart';
import 'package:safe_neighborhood/app/shared/widgets/text/text_widget.dart';
import 'package:flutter/material.dart';

class DropdownButtonValue {
  final dynamic value;
  final String label;

  DropdownButtonValue(this.value, this.label);
}

class DropdownButtonWidget extends StatelessWidget {
  final dynamic value;
  final String placeholder;
  final Function onChanged;
  final List<DropdownButtonValue> items;

  const DropdownButtonWidget(
      {Key key,
      @required this.items,
      @required this.onChanged,
      this.value,
      this.placeholder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<DropdownButtonValue> itemsWidthDefaultOption =
        new List<DropdownButtonValue>();
    itemsWidthDefaultOption.addAll(this.items);
    itemsWidthDefaultOption.add(new DropdownButtonValue('', ''));

    return Container(
        padding: EdgeInsets.only(top: 3, bottom: 3, left: 12, right: 12),
        decoration: BoxDecoration(
          border: Border.all(color: Color.dropdownBorderColor),
          borderRadius:
              BorderRadius.all(Radius.circular(BorderRadiusCustom.normal)),
        ),
        child: DropdownButton<String>(
            isExpanded: true,
            value: this.value,
            underline: Container(
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.transparent))),
            ),
            onChanged: (String v) {
              if (this.onChanged != null) {
                this.onChanged(v);
              }
            },
            items: itemsWidthDefaultOption.map((DropdownButtonValue data) {
              return DropdownMenuItem<String>(
                value: data.value,
                child: TextWidget(data.label),
              );
            }).toList(),
            hint: this.placeholder != null ? Text(this.placeholder) : null));
  }
}
