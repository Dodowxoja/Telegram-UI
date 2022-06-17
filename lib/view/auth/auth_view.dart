import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:telegram/core/constants/color_const.dart';

class AuthView extends StatelessWidget {
  const AuthView({Key? key}) : super(key: key);

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
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
