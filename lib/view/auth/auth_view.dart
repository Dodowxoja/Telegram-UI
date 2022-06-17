import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:telegram/core/constants/color_const.dart';

class AuthView extends StatefulWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            child: Text('Next'.tr()),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/cart', (route) => false);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width, 55),
                primary: Colors.red,
              ),
              child: Text('uzbek'.tr()),
              onPressed: () {
                context.setLocale(const Locale('uz', "UZ"));
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width, 55),
                primary: Colors.amber,
              ),
              child: Text('english'.tr()),
              onPressed: () async {
                context.setLocale(const Locale('en', "EN"));
              },
            ),
          ),
        ],
      ),
    );
  }
}
