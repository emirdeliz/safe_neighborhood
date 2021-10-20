import 'package:safe_neighborhood/app/shared/config/color_custom.dart';
import 'package:safe_neighborhood/app/shared/config/padding_custom.dart';
import 'package:safe_neighborhood/app/shared/widgets/text/text_widget.dart';
import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  final String title;
  final dynamic content;
  final String buttonCloseTitle;
  final Color backgroundColor;
  final bool disabled;

  const AlertWidget(
      {Key key,
      this.title,
      this.content,
      this.buttonCloseTitle = 'Fechar',
      this.backgroundColor,
      this.disabled = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: TextWidget(this.title,
          overflow: TextOverflow.fade, fontWeight: FontWeight.bold),
      content: this.content,
      backgroundColor:
          this.disabled ? Color.disabledBackgroundColor : this.backgroundColor,
      contentPadding: EdgeInsets.only(
        top: PaddingCustom.normal,
        right: PaddingCustom.normal,
        bottom: PaddingCustom.none,
        left: PaddingCustom.normal,
      ),
      actions: <Widget>[
        FlatButton(
          child: TextWidget(this.buttonCloseTitle),
          onPressed: this.disabled
              ? null
              : () {
                  Navigator.of(context).pop();
                },
        ),
      ],
    );
  }
}
