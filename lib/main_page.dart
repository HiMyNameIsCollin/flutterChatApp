import 'package:flutter/material.dart';
import './dashboard.dart';
import 'widgets/page_header.dart';
import 'widgets/page_switch.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State {
  var _mainPageRoute = 'dashboard';

  _handleMainPageRoute(String str) {
    print(str);
    setState(() {
      _mainPageRoute = str;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            PageHeader(),
            PageSwitch(
              _mainPageRoute,
              _handleMainPageRoute,
            ),
            Expanded(
              flex: 1,
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Dashboard(),
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
