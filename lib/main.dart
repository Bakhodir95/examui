import 'package:examui/after_logged.dart';
import 'package:examui/main_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyProject());
}

class MyProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (AfterLogged()),
    );
  }
}
