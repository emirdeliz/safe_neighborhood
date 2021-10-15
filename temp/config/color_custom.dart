import 'package:flutter/cupertino.dart';

class ColorCustom {
  static Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  // shared/widgets
  static final Color buttonPrimaryBgColor = hexToColor('#074180');
  static final Color buttonPrimaryTextColor = hexToColor('#f0f0f0');
  static final Color buttonSecondaryBgColor = hexToColor('#aabbcc');
  static final Color buttonSecondaryTextColor = hexToColor('#000000');
  static final Color buttonTertiaryBgColor = hexToColor('#ffffff');
  static final Color buttonTertiaryTextColor = hexToColor('#ffffff');
  static final Color dropdownBorderColor = hexToColor('#d3d3d4');
  static final Color containerBgColor = hexToColor('#eaeaea');
  static final Color linkColorColor = hexToColor('#888989');
  static final Color loadingTextColor = hexToColor('#ffffff');
  static final Color tabLabelColor = hexToColor('#1b5192');
  static final Color tabLabelUnSelectedColor = hexToColor('#4d4d4d');
  static final Color dividerColor = hexToColor('#ffffff');
  static final Color modalBackgroundColor = Color.fromRGBO(0, 0, 0, 0.5);

  // commons
  static final Color errorTextColor = hexToColor('#ffffff');
  static final Color listViewBorderColor = hexToColor('#a9a9a9');
  static final Color navBackgroundColor = hexToColor('#074180');
  static final Color disabledBackgroundColor = Color.fromRGBO(128, 128, 128, 0.9);

  // modules/login
  static final Color loginBgColor = hexToColor('#e7e7e7'); 

  // modules/home
  static final Color homeTextDropdownButtonFilterColor = hexToColor('#7d7e7e'); 
  static final Color homeTitleDropdownButtonFilterColor = hexToColor('#013d86'); 

  static final Color devicesTextErrorColor = hexToColor('#7d7e7e');

  // modules/pricing
  static final Color pricingTitlePhoneColor = hexToColor('#43c8fc');
  static final Color pricingDescriptionColor = hexToColor('#ffffff');
  static final Color pricingContainerBgColor = hexToColor('#01336a'); 
  static final Color pricingPlanContainerBorderColor = hexToColor('#ffffff'); 
  static final Color pricingPlanTextColor = hexToColor('#ffffff'); 

  // modules/see_more
  static final Color seeMoreNavbarBgColor = hexToColor('#eeeeee');
  static final Color seeMoreMainContainerBgColor = hexToColor('#012c5d');
  static final Color seeMoreTabContainerBgColor = hexToColor('#eeeeee');
  static final Color seeMoreTabContentContainerBgColor = hexToColor('#eeeeee');
  static final Color seeMorePhoneTitleColor = hexToColor('#013d86');
  static final Color seeMorePhoneSubTitleColor = hexToColor('#4d4d4d');
  static final Color seeMoreDividerColor = hexToColor('#0f468b');
  static final Color seeMoreSectionTitleColor = hexToColor('#013d86');
}
