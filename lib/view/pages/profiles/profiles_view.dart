import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:telegram/core/components/appbars/my_app_bar_profiles_comp.dart';
import 'package:telegram/core/components/containers/my_container_profiles_comp.dart';
import 'package:telegram/core/components/my_padding_profile_comp.dart';
import 'package:telegram/core/components/my_text_profiles_comp.dart';
import 'package:telegram/core/components/my_text_style_comp.dart';
import 'package:telegram/core/constants/color_const.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConst.colorF6F6F6,
      appBar: MyAppBarProfilesComp.myAppBarProfilesComp(context),
      body: Column(
        children: [
          MyContainerProfilesComp.myContainerProfilesComp(
            context,
            MediaQuery.of(context).size.height * 0.1,
            ListTile(
              leading: InkWell(
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: const NetworkImage(
                    "https://source.unsplash.com/random/",
                  ),
                  backgroundColor: ColorsConst.color007AFF,
                  child: const Icon(Icons.camera_alt),
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
                      color: ColorsConst.colorC7C7CC,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
            child: MyPaddingProfilesComp.myPaddingProfilesComp(
              "E_y_n_a_a_a_o_p_p".tr(),
            ),
          ),
          MyContainerProfilesComp.myContainerProfilesComp(
            context,
            MediaQuery.of(context).size.height * 0.06,
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 25),
              child: MyTextProfilesTextComp.myTextProfilesTextComp1(
                  "Digital goodies designer - Pixsellz"),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: MyPaddingProfilesComp.myPaddingProfilesComp(
                "A_d_s_a_a_o_o_c_E_23_y_d_f_S_F".tr(),
              ),
            ),
          ),
          MyContainerProfilesComp.myContainerProfilesComp(
            context,
            MediaQuery.of(context).size.height * 0.102,
            Column(
              children: [
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyTextProfilesTextComp.myTextProfilesTextComp1(
                              "Change_N".tr()),
                          MyTextProfilesTextComp.myTextProfilesTextComp2(
                              "+1 202 555 0147"),
                          Icon(
                            Icons.chevron_right_outlined,
                            color: ColorsConst.color3C3C43,
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
                Divider(
                  thickness: 1,
                  height: 20,
                  indent: MediaQuery.of(context).size.width * 0.06,
                ),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyTextProfilesTextComp.myTextProfilesTextComp1(
                            "Username".tr()),
                        MyTextProfilesTextComp.myTextProfilesTextComp2(
                            "@jacob_designer"),
                        Icon(
                          Icons.chevron_right_outlined,
                          color: ColorsConst.color3C3C43,
                        )
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.048),
          InkWell(
            child: MyContainerProfilesComp.myContainerProfilesComp(
              context,
              MediaQuery.of(context).size.height * 0.06,
              Center(
                child: Text(
                  "Add Account".tr(),
                  style: MyTextStyleComp.myTextStyle(
                      color: ColorsConst.color037EE5, size: 18),
                ),
              ),
            ),
            onTap: () {},
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.048),
          InkWell(
            child: MyContainerProfilesComp.myContainerProfilesComp(
              context,
              MediaQuery.of(context).size.height * 0.06,
              Center(
                child: Text(
                  "Log Out".tr(),
                  style: MyTextStyleComp.myTextStyle(
                      color: ColorsConst.colorFE3B30, size: 18),
                ),
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
