import 'package:flutter/material.dart';
import 'package:telegram/core/components/my_text_style_comp.dart';
import 'package:telegram/core/constants/color_const.dart';

class MyAppBarChatComp {
  static AppBar myAppBarChatComp(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: ColorsConst.color007AFF),
      elevation: 0,
      backgroundColor: ColorsConst.colorF6F6F6,
      centerTitle: true,
      title: Column(
        children: [
          Text(
            "Nick Name",
            style: MyTextStyleComp.myTextStyle(
              color: ColorsConst.colorBlack,
              size: 18,
            ),
          ),
          Text(
            "last seen just now",
            style: MyTextStyleComp.myTextStyle(
              color: ColorsConst.color787878,
              size: 14,
            ),
          )
        ],
      ),
      actions: [
        InkWell(
          child: CircleAvatar(
            radius: 25,
            // backgroundImage: const NetworkImage(
            //   "https://source.unsplash.com/random/",
            // ),
            backgroundColor: ColorsConst.color007AFF,
          ),
          onTap: () {
            Navigator.pushNamed(context, "/info");
          },
        ),
      ],
    );
  }
}
