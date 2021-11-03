import 'package:flutter/material.dart';

import './text_styles.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DashboardState();
  }
}

class _DashboardState extends State {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 16,
        bottom: 16,
        left: 32,
        right: 32,
      ),
      child: Text(
        'Whats going on?',
        style: largeBlackText,
      ),
    );
  }
}
