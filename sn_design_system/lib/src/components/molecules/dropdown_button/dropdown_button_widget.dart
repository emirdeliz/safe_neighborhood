import 'package:flutter/material.dart';
import 'package:sn_design_system/src/components/atoms/text/text_widget.dart';

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
      this.items, this.onChanged, this.value, this.placeholder,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final List<DropdownButtonValue> itemsWidthDefaultOption =
    //     new List<DropdownButtonValue>();
    // itemsWidthDefaultOption.addAll(this.items);
    // itemsWidthDefaultOption.add(new DropdownButtonValue('', ''));

    // return Container(
    //     padding: EdgeInsets.only(top: 3, bottom: 3, left: 12, right: 12),
    //     decoration: BoxDecoration(
    //       border: Border.all(color: Color.dropdownBorderColor),
    //       borderRadius:
    //           BorderRadius.all(Radius.circular(BorderRadiusCustom.normal)),
    //     ),
    //     child: DropdownButton<String>(
    //         isExpanded: true,
    //         value: this.value,
    //         underline: Container(
    //           decoration: const BoxDecoration(
    //               border:
    //                   Border(bottom: BorderSide(color: Colors.transparent))),
    //         ),
    //         onChanged: (String v) {
    //           if (this.onChanged != null) {
    //             this.onChanged(v);
    //           }
    //         },
    //         items: itemsWidthDefaultOption.map((DropdownButtonValue data) {
    //           return DropdownMenuItem<String>(
    //             value: data.value,
    //             child: TextWidget(data.label),
    //           );
    //         }).toList(),
    //         hint: this.placeholder != null ? Text(this.placeholder) : null));
    return const TextWidget('DropdownButton');
  }
}
