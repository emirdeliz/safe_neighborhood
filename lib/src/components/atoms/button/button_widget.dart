import 'package:flutter/material.dart';

enum EButtonType {
  primary,
  secondary,
  outline_primary,
  outline_secondary,
  outline_tertiary
}

enum EButtonSize { small, normal, large }

class ButtonProps {
  Color color;
  Color textColor;
  EButtonSize size;
  ButtonProps(this.color, this.textColor);
}

class ButtonWidget extends StatelessWidget {
  final String title;
  final EButtonType type;
  final EButtonSize size;
  final Function onPressed;

  const ButtonWidget(
      {Key key,
      @required this.title,
      @required this.onPressed,
      this.type = EButtonType.primary,
      this.size = EButtonSize.normal})
      : super(key: key);

  ButtonProps _buildButtonProps() {
    switch (this.type) {
      case EButtonType.outline_tertiary:
        return new ButtonProps(
          Color.buttonTertiaryBgColor,
          Color.buttonTertiaryTextColor,
        );
      case EButtonType.secondary:
      case EButtonType.outline_secondary:
        return new ButtonProps(
            Color.buttonSecondaryBgColor, Color.buttonSecondaryTextColor);
      case EButtonType.primary:
      case EButtonType.outline_primary:
      default:
        {
          return new ButtonProps(
              Color.buttonPrimaryBgColor, Color.buttonPrimaryTextColor);
        }
    }
  }

  RaisedButton _buildButton(ButtonProps props) {
    return (RaisedButton(
      padding: this._buildButtonPadding(),
      color: props.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(BorderRadiusCustom.normal),
      ),
      child: TextWidget(this.title,
          color: props.textColor, fontSize: FontSizeCustom.normal),
      onPressed: this.onPressed,
    ));
  }

  RaisedButton _buildButtonOutline(ButtonProps props) {
    return (RaisedButton(
      padding: this._buildButtonPadding(),
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(BorderRadiusCustom.normal),
          side: BorderSide(color: props.color)),
      child: TextWidget(this.title,
          color: props.textColor, fontSize: FontSizeCustom.normal),
      onPressed: this.onPressed,
    ));
  }

  EdgeInsets _buildButtonPadding() {
    switch (this.size) {
      case EButtonSize.large:
        return EdgeInsets.only(top: 25, bottom: 25, left: 30, right: 30);
      case EButtonSize.small:
        return EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10);
      case EButtonSize.normal:
      default:
        return EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20);
    }
  }

  @override
  Widget build(BuildContext context) {
    final ButtonProps props = this._buildButtonProps();
    switch (this.type) {
      case EButtonType.outline_primary:
      case EButtonType.outline_secondary:
      case EButtonType.outline_tertiary:
        return this._buildButtonOutline(props);
      case EButtonType.primary:
      case EButtonType.secondary:
      default:
        return this._buildButton(props);
    }
  }
}
