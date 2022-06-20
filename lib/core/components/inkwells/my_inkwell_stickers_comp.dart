import 'package:flutter/material.dart';
import 'package:telegram/core/components/my_text_style_comp.dart';
import 'package:telegram/core/constants/color_const.dart';

class MyInkwellStickersComp {
  static InkWell myInkwellStickersComp(String png, String text) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/stickers/$png.png"),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: MyTextStyleComp.myTextStyle(size: 18),
                ),
                Text(
                  "25 stickers",
                  style: MyTextStyleComp.myTextStyle(
                    color: ColorsConst.color8E8E93,
                    size: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
