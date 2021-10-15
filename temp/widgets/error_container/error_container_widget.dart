import 'package:app_digital_pricing/app/shared/config/color_custom.dart';
import 'package:app_digital_pricing/app/shared/config/padding_custom.dart';
import 'package:app_digital_pricing/app/shared/widgets/button/button_widget.dart';
import 'package:app_digital_pricing/app/shared/widgets/margin_container/margin_container_widget.dart';
import 'package:app_digital_pricing/app/shared/widgets/padding_container/padding_container_widget.dart';
import 'package:app_digital_pricing/app/shared/widgets/text/text_widget.dart';
import 'package:flutter/material.dart';

class ErrorContainerWidget extends StatelessWidget {
  final String error;
  final String firstButtonTitle;
  final EButtonType firstButtonType;
  final Function onPressedFirstButton;
  final String secondButtonTitle;
  final EButtonType secondButtonType;
  final Function onPressedSecondButton;
  final Color textErrorColor;

  const ErrorContainerWidget(
    this.error, { 
      Key key,
      this.firstButtonTitle = 'Voltar',
      this.firstButtonType,
      this.onPressedFirstButton,
      this.secondButtonTitle,
      this.secondButtonType,
      this.onPressedSecondButton,
      this.textErrorColor
    }
  ) : super(key: key);

  List<Widget> _renderWidgets(BuildContext context) {
    final List<Widget> widgets = [
      TextWidget(
        this.error,
        textAlign: TextAlign.center,
        overflow: TextOverflow.fade,
        color: this.textErrorColor ?? ColorCustom.errorTextColor,
      ),
      MarginContainerWidget(
        ButtonWidget(
          title: this.firstButtonTitle,
          type: this.firstButtonType ?? EButtonType.outline_tertiary,
          onPressed: this.onPressedFirstButton ?? () => Navigator.of(context).pop()
        )
      )
    ];

    if(this.secondButtonTitle != null) {
      widgets.add(
        MarginContainerWidget(
          ButtonWidget(
            title: this.secondButtonTitle,
            type: this.secondButtonType ?? EButtonType.outline_tertiary,
            onPressed: this.onPressedSecondButton ?? () => {}
          )
        )
      );
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return PaddingContainerWidget(
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: this._renderWidgets(context)
      ),
      paddingLeft: PaddingCustom.small,
      paddingRight: PaddingCustom.small
    );
  }
}
