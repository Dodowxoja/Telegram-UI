import 'package:flutter/material.dart';
import 'package:telegram/view/auth/view/auth_view.dart';
import 'package:telegram/view/cart/pages/chats/chat_view.dart';
import 'package:telegram/view/cart/view/cart_view.dart';
import 'package:telegram/view/pages/apperance/apperance_view.dart';
import 'package:telegram/view/pages/data_and_storage/data_and_storage_view.dart';
import 'package:telegram/view/pages/info/info_view.dart';
import 'package:telegram/view/pages/languages/languages_view.dart';
import 'package:telegram/view/pages/notifications/notifications_view.dart';
import 'package:telegram/view/pages/privacy_and_security/privacy_and_security_view.dart';
import 'package:telegram/view/pages/profiles/profiles_view.dart';
import 'package:telegram/view/pages/stickers/stickers_view.dart';

class MyRoutes {
  static final MyRoutes _instanse = MyRoutes.init();
  static MyRoutes get instanse => MyRoutes._instanse;
  MyRoutes.init();

  Route? onGenerate(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/auth':
        return MaterialPageRoute(builder: (_) => AuthView());

      case '/cart':
        return MaterialPageRoute(builder: (_) => const CartView());

      case '/chat':
        return MaterialPageRoute(builder: (_) => const ChatView());

      case '/info':
        return MaterialPageRoute(builder: (_) => const InfoView());

      case '/profile':
        return MaterialPageRoute(builder: (_) => const ProfileView());

      case '/stickers':
        return MaterialPageRoute(builder: (_) => const StickersView());

      case '/notifications':
        return MaterialPageRoute(builder: (_) => const NotificationsView());

      case '/privacyAndSecurity':
        return MaterialPageRoute(
            builder: (_) => const PrivacyAndSecurityView());

      case '/dataAndStorage':
        return MaterialPageRoute(builder: (_) => const DataAndStorageView());

      case '/apperance':
        return MaterialPageRoute(builder: (_) => const ApperanceView());

      case '/languages':
        return MaterialPageRoute(builder: (_) => const LanguagesView());
    }
  }
}
