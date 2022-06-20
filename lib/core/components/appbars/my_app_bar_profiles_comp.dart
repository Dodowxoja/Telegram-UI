import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram/core/components/my_text_style_comp.dart';
import 'package:telegram/core/constants/color_const.dart';

class MyAppBarProfilesComp {
  static AppBar myAppBarProfilesComp(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: ColorsConst.color007AFF),
      elevation: 0,
      backgroundColor: ColorsConst.colorF6F6F6,
      centerTitle: true,
      leading: InkWell(
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('assets/icons/back.svg'),
              Text(
                'Back'.tr(),
                style: MyTextStyleComp.myTextStyle(
                  color: ColorsConst.color037EE5,
                  size: 16,
                ),
              )
            ],
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        "Edit Profile".tr(),
        style: MyTextStyleComp.myTextStyle(
          size: 20,
          color: ColorsConst.colorBlack,
        ),
      ),
      actions: [
        TextButton(
          child: Text(
            "Done".tr(),
            style: MyTextStyleComp.myTextStyle(
              color: ColorsConst.color037EE5,
              size: 17,
              weight: FontWeight.w500
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
