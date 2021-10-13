import 'package:dash_board/dashboard.dart';
import 'package:dash_board/layout_generator.dart';
import 'package:dash_board/temperature.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App Dashboard',
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: LayoutGenerator(),
    );
  }

}