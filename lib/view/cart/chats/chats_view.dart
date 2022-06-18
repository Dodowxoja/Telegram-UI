import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:telegram/core/constants/color_const.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConst.colorF6F6F6,
      appBar: AppBar(
        backgroundColor: ColorsConst.colorF6F6F6,
        leading: TextButton(
          child: Text('Edit'.tr()),
          onPressed: () {},
        ),
        title: Text('Chats'.tr()),
      ),
      body: Column(),
    );
  }
}
