import 'package:flutter/material.dart';
import 'package:telegram/core/components/appbars/my_app_bar_info_comp.dart';
import 'package:telegram/core/components/my_text_style_comp.dart';
import 'package:telegram/core/constants/color_const.dart';

class InfoView extends StatelessWidget {
  const InfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBarInfoComp.myAppBarInfoComp(context),
      body: Column(
        children: [
          ListTile(
            leading: InkWell(
              child: CircleAvatar(
                radius: 30,
                backgroundImage: const NetworkImage(
                  "https://source.unsplash.com/random/",
                ),
                backgroundColor: ColorsConst.color007AFF,
              ),
              onTap: () {},
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                "Nick Name",
                style: MyTextStyleComp.myTextStyle(
                  color: ColorsConst.colorBlack,
                  size: 20,
                ),
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(
                  thickness: 1,
                ),
                Text(
                  "Last Name",
                  style: MyTextStyleComp.myTextStyle(
                    color: ColorsConst.colorBlack,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          _listTile("main", "phone number", ColorsConst.color00B12C),
          _listTile("home", "home phone number", ColorsConst.color037EE5),
          _listTile(
            "bio",
            "Design adds value faster, than it adds cost",
            ColorsConst.colorBlack,
          ),
          const SizedBox(height: 12),
          ListTile(
            title: Text(
              "Notifications",
              style: MyTextStyleComp.myTextStyle(
                color: ColorsConst.colorBlack,
                size: 18,
              ),
            ),
            trailing: SizedBox(
              width: MediaQuery.of(context).size.width * 0.23,
              child: Row(
                children: [
                  Text(
                    "Enabled",
                    style: MyTextStyleComp.myTextStyle(
                      color: ColorsConst.color3C3C43,
                      size: 18,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: ColorsConst.color3C3C43,
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              thickness: 1,
              height: 0,
            ),
          ),
          const SizedBox(height: 18),
          ListTile(
            title: Text(
              "Delete Contact",
              style: MyTextStyleComp.myTextStyle(
                color: ColorsConst.colorFE3B30,
                size: 18,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              thickness: 1,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }

  ListTile _listTile(String text, String text2, Color color) {
    return ListTile(
      title: Text(
        text,
        style: MyTextStyleComp.myTextStyle(
          color: ColorsConst.colorBlack,
          size: 15,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text2,
            style: MyTextStyleComp.myTextStyle(
              color: color,
              size: 18,
            ),
          ),
          const Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
