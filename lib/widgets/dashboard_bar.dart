import 'package:flutter/material.dart';

class DashboardBar extends StatelessWidget {
  final String dbRoute;
  final Function handleDbRoute;

  DashboardBar(this.dbRoute, this.handleDbRoute);

  @override
  Widget build(BuildContext context) {
    getAB(String state) {
      var color;
      if (state == dbRoute) {
        color = Colors.white;
      } else {
        color = Theme.of(context).primaryColor;
      }
      var activeBorder = BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: color,
            width: 4.0,
          ),
        ),
      );
      return activeBorder;
    }

    return Container(
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: getAB('chats'),
              child: TextButton(
                child: Text('Chats'),
                onPressed: () => handleDbRoute('chats'),
              ),
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              decoration: getAB('contacts'),
              child: TextButton(
                child: Text('Contacts'),
                onPressed: () => handleDbRoute('contacts'),
              ),
            ),
            flex: 1,
          ),
        ],
      ),
      width: double.infinity,
    );
  }
}
