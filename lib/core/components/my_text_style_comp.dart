import 'package:flutter/material.dart';
import 'package:telegram/core/constants/color_const.dart';

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
  //     TextStyle(fontSize: 20, color: ColorsConst.colorBlack);

  // static get contactsListViewSubTitleStyle => TextStyle(
  //     fontSize: 15, color: ColorsConst.colorBlack, fontWeight: FontWeight.w400);

  // static get contactsLocationTitleStyle => TextStyle(
  //     fontSize: 20,
  //     color: ColorsConst.color037EE5,
  //     fontWeight: FontWeight.w400);
}
