
import 'package:app_digital_pricing/app/shared/config/color_custom.dart';
import 'package:app_digital_pricing/app/shared/config/padding_custom.dart';
import 'package:app_digital_pricing/app/shared/widgets/button/button_widget.dart';
import 'package:app_digital_pricing/app/shared/widgets/loading/loading_widget.dart';
import 'package:app_digital_pricing/app/shared/widgets/margin_container/margin_container_widget.dart';
import 'package:app_digital_pricing/app/shared/widgets/padding_container/padding_container_widget.dart';
import 'package:app_digital_pricing/app/shared/widgets/text/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final Widget child;
  final Color color;
  final bool loading;
  final bool noMargin;
  final BoxDecoration decoration;
  final String error;
  final Function onClearError;
  final String buttonTitle;

  const ContainerWidget({
    Key key,
    @required this.child,
    this.loading = false,
    this.noMargin = false,
    this.color,
    this.decoration,
    this.error,
    this.onClearError,
    this.buttonTitle = 'Voltar'
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final EdgeInsets padding = this.noMargin || false ? null : EdgeInsets.only(
      top: PaddingCustom.large, left: PaddingCustom.normal, right: PaddingCustom.normal
    );
    final List<Widget> children = [Container(
      padding: padding,
      child: this.child,
      color: this.decoration != null ? null : this.color ?? ColorCustom.containerBgColor,
      decoration: this.decoration,
      height: double.infinity
    )];

    final bool hasError = this.error != '' && this.error != null;
    if (this.loading || hasError) {
      children.addAll([
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: Opacity( 
            opacity: 0.7,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: ColorCustom.modalBackgroundColor
            )
          )
        ),
        PaddingContainerWidget(
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: hasError ? [
              TextWidget(
                this.error,
                overflow: TextOverflow.fade,
                textAlign: TextAlign.center,
                color: ColorCustom.errorTextColor
              ),
              MarginContainerWidget(
                ButtonWidget(title: this.buttonTitle, onPressed: this.onClearError)
              )
            ] : [
              Align(child: LoadingWidget())
            ]
          ),
          paddingLeft: PaddingCustom.normal,
          paddingRight: PaddingCustom.normal,
        )
      ]);
    }
    return Stack(
      children: children,
    );
  }
}
