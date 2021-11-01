import 'package:flutter/material.dart';
import 'package:flutter_chat/chat_room.dart';
import './dashboard.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State {
  var route = 'dashboard';

  void changeRoute(String str) {
    setState(() {
      route = str;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (route == 'chatRoom') {
      return ChatRoom();
    } else {
      return Dashboard();
    }
  }
}
