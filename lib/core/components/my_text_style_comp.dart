import 'package:flutter/material.dart';

class MyTextStyleComp {
  static TextStyle myTextStyle({double size = 14, color, weight, style}) {
    return TextStyle(
      fontSize: size,
      color: color ?? Colors.black,
      fontWeight: weight ?? FontWeight.normal,
      fontStyle: style ?? FontStyle.normal,
    );
  }

  // static get contactsAppBarTitleStyle =>
      // TextStyle(size: 20, color: ColorsConst.colorBlack);

  // static get contactsListViewSubTitleStyle => TextStyle(
      // size: 15, color: ColorsConst.colorBlack, weight: FontWeight.w400);

  // static get contactsLocationTitleStyle => TextStyle(
  //     size: 20,
  //     color: ColorsConst.color037EE5,
  //     weight: FontWeight.w400);
}
