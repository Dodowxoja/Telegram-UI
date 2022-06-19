import 'package:flutter/material.dart';
import 'package:telegram/core/constants/color_const.dart';

class MyContainerStickersComp {
  static Container myContainerStickersComp(
    BuildContext context,
    double h,
    Widget child,
  ) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: h,
      color: ColorsConst.colorWhite,
      child: child,
    );
  }
}
