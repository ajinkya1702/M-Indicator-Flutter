// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors, unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/local_page.dart';
import 'pages/Map_Page.dart';
import 'pages/tp_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/local": (context) => LocalPage(),
        "/map": (context) => MapPage(),
        "/eg": (context) => MySample()
      },
    );
  }
}
