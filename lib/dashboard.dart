import 'package:flutter/material.dart';
import 'widgets/dashboard_bar.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DashboardState();
  }
}

class _DashboardState extends State {
  var menuIsOpen = false;
  var dashboardRoute = 'chats';

  handleDashboardRoute(String str) {
    setState(() {
      dashboardRoute = str;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        toolbarHeight: 60,
        bottom: PreferredSize(
          child: DashboardBar(dashboardRoute, handleDashboardRoute),
          preferredSize: const Size.fromHeight(40),
        ),
      ),
      endDrawer: Text('data'),
      body: Column(
        children: [],
      ),
    );
  }
}
