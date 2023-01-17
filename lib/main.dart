// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}
