import 'package:flutter/material.dart';
import 'package:telegram/view/auth/view/auth_view.dart';
import 'package:telegram/view/cart/pages/chats/chat_view.dart';
import 'package:telegram/view/cart/view/cart_view.dart';
import 'package:telegram/view/pages/info/info_view.dart';

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

      case '/auth':
        return MaterialPageRoute(builder: (_) => AuthView());

      case '/auth':
        return MaterialPageRoute(builder: (_) => AuthView());

      case '/auth':
        return MaterialPageRoute(builder: (_) => AuthView());
    }
  }
}
