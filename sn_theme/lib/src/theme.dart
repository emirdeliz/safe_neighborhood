import 'package:flutter/material.dart';
import 'package:sn_theme/sn_theme.dart';

class SafeNeighborhoodTheme with ChangeNotifier {
  static bool _isDarkTheme = false;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    //1
    return ThemeData(
      //2
      primaryColor: LightColor.p1,
      fontFamily: 'Montserrat', //3
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: DarkColor.p1,
      // buttonTheme: ButtonThemeData(
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      //   buttonColor: CustomColors.lightPurple,
      // )
    );
  }
}

// export 'border.dart';
// export 'color.dart';
// export 'dimension.dart';
// export 'font_size.dart';
// export 'icon.dart';
// export 'margin.dart';
// export 'padding.dart';
// export 'text.dart';