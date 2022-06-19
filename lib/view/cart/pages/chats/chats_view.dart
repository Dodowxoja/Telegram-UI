import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram/core/components/my_text_style_comp.dart';
import 'package:telegram/core/constants/color_const.dart';
import 'package:telegram/mock/chats_data.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConst.colorF6F6F6,
      appBar: AppBar(
        backgroundColor: ColorsConst.colorF6F6F6,
        centerTitle: true,
        leading: TextButton(child: Text('Edit'.tr()), onPressed: () {}),
        title: Text(
          'Chats'.tr(),
          style: MyTextStyleComp.myTextStyle(size: 17, weight: FontWeight.w500),
        ),
        elevation: 0,
        actions: [
          InkWell(child: SvgPicture.asset('assets/icons/chatsAppBarShape.svg')),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder( 
                itemBuilder: (_,__){
                  return  InkWell(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/users/${ChatsData.chatsDate[__]['image']}.png'),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ChatsData.chatsDate[__]['name']),
                          ChatsData.chatsDate[__]['bio'] != 'null'? Text(ChatsData.chatsDate[__]['bio']) : const SizedBox(),
                        ],
                      ),
                      subtitle: Text(ChatsData.chatsDate[__]['comment']),
                    ),
                    onLongPress: (){
                      showDialog(context: context, builder: (context) => alertDialog(context));
                    },
                  );
                },
                itemCount: ChatsData.chatsDate.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  AlertDialog alertDialog(BuildContext context){
    return AlertDialog(
      backgroundColor: ColorsConst.color858E96.withAlpha(240),
      insetPadding: EdgeInsets.zero,
      contentPadding: const EdgeInsets.all(8),
      actionsAlignment: MainAxisAlignment.start,
      content: Padding(
        padding:const  EdgeInsets.only(left: 11,right: 11,top: 76),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 1,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.62,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(left: 10),
          height: MediaQuery.of(context).size.height * 0.21,
          width: MediaQuery.of(context).size.width * 0.66,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorsConst.colorFEFEFE,
          ),
          child: Column(
            children: [
              a('Mark as Unread',''),
              Divider(),
              a('Mark as Unread',''),
              Divider(),
              a('Mark as Unread',''),
              Divider(),
              a('Mark as Unread',''),  
            ],
          ),
        ),
      ],
    );
  }

  Row a(text,nameSVG) {
    return Row(
      children: [
        Text('$text'.tr()),
        SvgPicture.asset('assets/icons/$nameSVG.svg')
      ],
    );
  }
}