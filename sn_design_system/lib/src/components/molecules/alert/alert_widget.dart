import 'package:flutter/material.dart';
import 'package:sn_design_system/src/components/atoms/text/text_widget.dart';

class AlertWidget extends StatelessWidget {
  final String title;
  final dynamic content;
  final String buttonCloseTitle;
  final Color backgroundColor;
  final bool disabled;

  const AlertWidget(this.title, this.content, this.buttonCloseTitle,
      this.backgroundColor, this.disabled,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return AlertDialog(
    //   title: TextWidget(this.title,
    //       overflow: TextOverflow.fade, fontWeight: FontWeight.bold),
    //   content: this.content,
    //   backgroundColor:
    //       this.disabled ? Color.disabledBackgroundColor : this.backgroundColor,
    //   contentPadding: EdgeInsets.only(
    //     top: PaddingCustom.normal,
    //     right: PaddingCustom.normal,
    //     bottom: PaddingCustom.none,
    //     left: PaddingCustom.normal,
    //   ),
    //   actions: <Widget>[
    //     FlatButton(
    //       child: TextWidget(this.buttonCloseTitle),
    //       onPressed: this.disabled
    //           ? null
    //           : () {
    //               Navigator.of(context).pop();
    //             },
    //     ),
    //   ],
    // );
    return const TextWidget('Alert');
  }
}
