import 'package:flutter/material.dart';
import 'package:sn_design_system/src/components/atoms/text/text_widget.dart';

enum ButtonType {
  primary,
  secondary,
  outlinePrimary,
  outlineSecondary,
  outlineTertiary
}

enum ButtonSize { small, normal, large }

class ButtonProps {
  Color color;
  Color textColor;
  ButtonSize size;
  ButtonProps(this.color, this.textColor, this.size);
}

class ButtonWidget extends StatelessWidget {
  final String child;
  final ButtonType type;
  final ButtonSize size;
  final void Function()? onPressed;

  const ButtonWidget(this.child, this.onPressed,
      {Key? key, this.type = ButtonType.primary, this.size = ButtonSize.normal})
      : super(key: key);

  // ButtonProps _buildButtonProps() {
  //   switch (this.type) {
  //     case ButtonType.outlineTertiary:
  //       return new ButtonProps(
  //         Color.buttonTertiaryBgColor,
  //         Color.buttonTertiaryTextColor,
  //       );
  //     case ButtonType.secondary:
  //     case ButtonType.outline_secondary:
  //       return new ButtonProps(
  //           Color.buttonSecondaryBgColor, Color.buttonSecondaryTextColor);
  //     case ButtonType.primary:
  //     case ButtonType.outline_primary:
  //     default:
  //       {
  //         return new ButtonProps(
  //             Color.buttonPrimaryBgColor, Color.buttonPrimaryTextColor);
  //       }
  //   }
  // }

  // RaisedButton _buildButton(ButtonProps props) {
  //   return (RaisedButton(
  //     padding: this._buildButtonPadding(),
  //     color: props.color,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(BorderRadiusCustom.normal),
  //     ),
  //     child: TextWidget(this.title,
  //         color: props.textColor, fontSize: FontSizeCustom.normal),
  //     onPressed: this.onPressed,
  //   ));
  // }

  // RaisedButton _buildButtonOutline(ButtonProps props) {
  //   return (RaisedButton(
  //     padding: this._buildButtonPadding(),
  //     color: Colors.transparent,
  //     shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(BorderRadiusCustom.normal),
  //         side: BorderSide(color: props.color)),
  //     child: TextWidget(this.title,
  //         color: props.textColor, fontSize: FontSizeCustom.normal),
  //     onPressed: this.onPressed,
  //   ));
  // }

  // EdgeInsets _buildButtonPadding() {
  //   switch (this.size) {
  //     case ButtonSize.large:
  //       return EdgeInsets.only(top: 25, bottom: 25, left: 30, right: 30);
  //     case ButtonSize.small:
  //       return EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10);
  //     case ButtonSize.normal:
  //     default:
  //       return EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // final ButtonProps props = this._buildButtonProps();
    // switch (this.type) {
    //   case ButtonType.outline_primary:
    //   case ButtonType.outline_secondary:
    //   case ButtonType.outline_tertiary:
    //     return this._buildButtonOutline(props);
    //   case ButtonType.primary:
    //   case ButtonType.secondary:
    //   default:
    //     return this._buildButton(props);
    // }

    return ElevatedButton(onPressed: onPressed, child: TextWidget(child));
  }
}
