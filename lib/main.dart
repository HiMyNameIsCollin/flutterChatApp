import 'package:flutter/material.dart';
import './main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var loggedIn = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        scaffoldBackgroundColor: Colors.deepPurpleAccent,
        primarySwatch: Colors.purple,
      ),
      home: loggedIn ? MainPage() : null,
    );
  }
}
