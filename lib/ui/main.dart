import 'package:flutter/material.dart';
import 'package:test_app/ui/main/MainScreen.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MainScreen(title: "Test application"));
  }
}
