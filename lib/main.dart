import 'package:flutter/material.dart';
import './main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var loggedIn = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        colorScheme: const ColorScheme.light().copyWith(
          primary: Colors.green[900],
          onPrimary: Colors.white,
          secondary: Colors.grey[500],
        ),
        scaffoldBackgroundColor: Colors.grey[400],
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: Colors.white,
          ),
        ),
      ),
      home: loggedIn ? MainPage() : null,
    );
  }
}
