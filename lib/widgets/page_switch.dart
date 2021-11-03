import 'package:flutter/material.dart';
import './button.dart';

class PageSwitch extends StatelessWidget {
  final String parentRoute;
  final Function parentButton;

  PageSwitch(this.parentRoute, this.parentButton);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Button(
            btnFunc: parentButton,
            parentState: parentRoute,
            btnText: 'Dashboard',
            btnIcon: Icons.dashboard,
          ),
          Button(
            btnFunc: parentButton,
            parentState: parentRoute,
            btnText: 'Popular',
            btnIcon: Icons.attractions,
          ),
          Button(
            btnFunc: parentButton,
            parentState: parentRoute,
            btnText: 'Chats',
            btnIcon: Icons.chat_bubble,
          ),
          Button(
            btnFunc: parentButton,
            parentState: parentRoute,
            btnText: 'Contacts',
            btnIcon: Icons.people_outline_sharp,
          ),
          Button(
            btnFunc: parentButton,
            parentState: parentRoute,
            btnText: 'Settings',
            btnIcon: Icons.settings,
          ),
        ],
      ),
    );
  }
}
